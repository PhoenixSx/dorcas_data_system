import 'dart:convert';
import 'package:flutter/foundation.dart'; // debugPrint
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:drift/drift.dart' as d;
import '../db/drift_db.dart';
import 'sync_cursor_dao.dart';

class LookupRepository {
  LookupRepository(this.db, this.client, this.cursorDao);
  final AppDatabase db;
  final SupabaseClient client;
  final SyncCursorDao cursorDao;

  // ---------------------- Logging helpers ----------------------

  String _rowId(Map<String, dynamic> row) {
    final v = row['id'] ?? row['code'] ?? row['pk'];
    return v?.toString() ?? '(no-id)';
  }

  /// Compact JSON preview to keep logs readable
  String _preview(Map<String, dynamic> row, {int max = 180}) {
    final s = const JsonEncoder.withIndent(null).convert({
      'id': row['id'],
      'code': row['code'],
      'title_ar': row['title_ar'],
      'title_eng': row['title_eng'],
      'created_at': row['created_at'],
      'updated_at': row['updated_at'],
    });
    return s.length <= max ? s : '${s.substring(0, max)}…';
  }

  /// Safe DateTime parse; logs table+field when value is null/invalid and returns epoch
  DateTime _toDate(
    dynamic v, {
    required String table,
    required Map<String, dynamic> row,
    required String field,
  }) {
    if (v == null) {
      debugPrint(
        'LOOKUP WARN [$table]: NULL $field for row id=${_rowId(row)} '
        'row=${_preview(row)} -> using epoch',
      );
      return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
    }
    if (v is DateTime) return v.toUtc();
    if (v is String) return DateTime.parse(v).toUtc();

    debugPrint(
      'LOOKUP WARN [$table]: Unexpected $field type=${v.runtimeType} '
      'for row id=${_rowId(row)} row=${_preview(row)} -> using epoch',
    );
    return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
  }

  // ---------------------- Core delta with logs ----------------------

  Future<int> _pullTable(
    String tableName, {
    required Future<void> Function(Map<String, dynamic> row) upsert,
    int pageSize = 2000,
  }) async {
    int total = 0;
    final last = await cursorDao.getCursor(tableName);
    var since = (last ?? DateTime.fromMillisecondsSinceEpoch(0, isUtc: true))
        .toIso8601String();

    debugPrint('LOOKUP PULL [$tableName]: since=$since pageSize=$pageSize');

    DateTime? maxSeen;
    int page = 0;

    while (true) {
      page += 1;

      List<dynamic> res;
      try {
        // Include rows with NULL updated_at OR updated_at > since (first-seed + delta)
        res = await client
            .from(tableName)
            .select('*')
            .or('updated_at.is.null,updated_at.gt.$since')
            .order('updated_at', ascending: true) // omit nullsFirst for wider compatibility
            .limit(pageSize);
      } catch (e, st) {
        debugPrint(
          'LOOKUP PULL ERROR [$tableName]: fetch failed page=$page since=$since '
          'error=$e\n$st',
        );
        rethrow;
      }

      final list = res.cast<Map<String, dynamic>>();
      debugPrint('LOOKUP PULL [$tableName]: page=$page fetched=${list.length}');
      if (list.isEmpty) break;

      try {
        await db.transaction(() async {
          for (final row in list) {
            try {
              await upsert(row);
            } catch (e, st) {
              debugPrint(
                'LOOKUP UPSERT ERROR [$tableName]: row id=${_rowId(row)} '
                'error=$e\nrow=${_preview(row)}\n$st',
              );
              rethrow;
            }

            final u = _toDate(row['updated_at'],
                table: tableName, row: row, field: 'updated_at');
            if (maxSeen == null || u.isAfter(maxSeen!)) maxSeen = u;
            total++;
          }
        });
      } catch (e, st) {
        debugPrint(
          'LOOKUP TX ERROR [$tableName]: page=$page count=${list.length} '
          'error=$e\n$st',
        );
        rethrow;
      }

      if (list.length < pageSize) break;

      // Advance the paging "since" using last row's updated_at (safe parsed)
      since = _toDate(list.last['updated_at'],
              table: tableName, row: list.last, field: 'updated_at')
          .toIso8601String();
      debugPrint('LOOKUP PULL [$tableName]: page=$page advance since=$since');
    }

    if (maxSeen != null) {
      await cursorDao.setCursor(tableName, maxSeen!);
      debugPrint(
          'LOOKUP PULL [$tableName]: done total=$total newCursor=$maxSeen');
    } else {
      debugPrint('LOOKUP PULL [$tableName]: done total=$total (cursor unchanged)');
    }

    return total;
  }

  // ---------------------- ALL pullers with logs ----------------------
  // Small tables first (lower pageSize), then larger ones.

  Future<int> pullGenders() => _pullTable('gender', upsert: (row) async {
        await db.into(db.genders).insertOnConflictUpdate(GendersCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'gender', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'gender', row: row, field: 'updated_at')),
          code: d.Value(row['code']),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
        ));
      }, pageSize: 100);

  Future<int> pullRelations() => _pullTable('relation', upsert: (row) async {
        await db.into(db.relations).insertOnConflictUpdate(RelationsCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'relation', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'relation', row: row, field: 'updated_at')),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
          code: d.Value(row['code'] ?? ''),
        ));
      }, pageSize: 1000);

  
Future<int> pullMaritalStatus() =>
    _pullTable('marital_status', upsert: (row) async {
  // Extract code and synthesize a safe fallback if needed
  final rawCode = (row['code'] as String?)?.trim();
  final safeCode = (rawCode == null || rawCode.isEmpty)
      ? 'marital_${_rowId(row)}' // fallback to a stable, unique code
      : rawCode;

  if (rawCode == null || rawCode.isEmpty) {
    debugPrint(
      'LOOKUP WARN [marital_status]: missing code for row id=${_rowId(row)} '
      'row=${_preview(row)} -> using synthesized code "$safeCode"',
    );
  }

  await db.into(db.maritalStatus).insertOnConflictUpdate(
        MaritalStatusCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(
              row['created_at'],
              table: 'marital_status',
              row: row,
              field: 'created_at')),
          updatedAt: d.Value(_toDate(
              row['updated_at'],
              table: 'marital_status',
              row: row,
              field: 'updated_at')),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          code: d.Value(safeCode),           // <-- ensure code is provided
          isActive: d.Value(row['is_active'] ?? true),
        ),
      );
}, pageSize: 300);


  Future<int> pullJobs() => _pullTable('job', upsert: (row) async {
        await db.into(db.jobs).insertOnConflictUpdate(JobsCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'job', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'job', row: row, field: 'updated_at')),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
          code: d.Value(row['code'] ?? ''),
        ));
      }, pageSize: 500);

  Future<int> pullNationalities() =>
      _pullTable('nationalities', upsert: (row) async {
        await db
            .into(db.nationalities)
            .insertOnConflictUpdate(NationalitiesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'nationalities', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'nationalities', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 1000);

  Future<int> pullEducationLevels() =>
      _pullTable('education_level', upsert: (row) async {
        await db
            .into(db.educationLevels)
            .insertOnConflictUpdate(EducationLevelsCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'education_level', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'education_level', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 200);

  Future<int> pullEducationStatuses() =>
      _pullTable('education_status', upsert: (row) async {
        await db
            .into(db.educationStatuses)
            .insertOnConflictUpdate(EducationStatusesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'education_status', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'education_status', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 200);

  Future<int> pullForWhos() => _pullTable('for_who', upsert: (row) async {
        await db.into(db.forWhos).insertOnConflictUpdate(ForWhosCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'for_who', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'for_who', row: row, field: 'updated_at')),
          code: d.Value(row['code']),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
        ));
      }, pageSize: 100);

  Future<int> pullQuestionTypes() =>
      _pullTable('question_type', upsert: (row) async {
        await db
            .into(db.questionTypes)
            .insertOnConflictUpdate(QuestionTypesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'question_type', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'question_type', row: row, field: 'updated_at')),
              code: d.Value(row['code']),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
            ));
      }, pageSize: 100);

  Future<int> pullDocumentTypes() =>
      _pullTable('document_type', upsert: (row) async {
        await db
            .into(db.documentTypes)
            .insertOnConflictUpdate(DocumentTypesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'document_type', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'document_type', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              hasCriteria: d.Value(row['has_criteria'] ?? false),
              criteria: d.Value(row['criteria']),
              code: d.Value(row['code'] ?? ''),
              forWhoId: d.Value(row['for_who_id']),
            ));
      }, pageSize: 300);

  Future<int> pullSections() => _pullTable('section', upsert: (row) async {
        await db.into(db.sections).insertOnConflictUpdate(SectionsCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'section', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'section', row: row, field: 'updated_at')),
          code: d.Value(row['code']),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
        ));
      }, pageSize: 300);

  Future<int> pullAnswerSets() =>
      _pullTable('answer_set', upsert: (row) async {
        await db
            .into(db.answerSets)
            .insertOnConflictUpdate(AnswerSetsCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'answer_set', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'answer_set', row: row, field: 'updated_at')),
              code: d.Value(row['code']),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
            ));
      }, pageSize: 800);

  Future<int> pullAnswerItems() =>
      _pullTable('answer_item', upsert: (row) async {
        await db
            .into(db.answerItems)
            .insertOnConflictUpdate(AnswerItemsCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'answer_item', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'answer_item', row: row, field: 'updated_at')),
              answerSetId: d.Value(row['answer_set_id']),
              code: d.Value(row['code']),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
            ));
      }, pageSize: 3000);

  Future<int> pullQuestions() => _pullTable('question', upsert: (row) async {
        await db.into(db.questions).insertOnConflictUpdate(QuestionsCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'question', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'question', row: row, field: 'updated_at')),
          code: d.Value(row['code']),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          sectionId: d.Value(row['section_id']),
          questionTypeId: d.Value(row['question_type_id']),
          forWhoId: d.Value(row['for_who_id']),
          answerSetId: d.Value(row['answer_set_id']),
          required: d.Value(row['required'] ?? false),
          position: d.Value(row['position'] ?? 1),
          isActive: d.Value(row['is_active'] ?? true),
        ));
      }, pageSize: 2000);

  Future<int> pullRequiredServices() =>
      _pullTable('required_service', upsert: (row) async {
        await db
            .into(db.requiredServices)
            .insertOnConflictUpdate(RequiredServicesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'required_service', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'required_service', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 300);

  Future<int> pullServiceStatuses() =>
      _pullTable('service_status', upsert: (row) async {
        await db
            .into(db.serviceStatuses)
            .insertOnConflictUpdate(ServiceStatusesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'service_status', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'service_status', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 200);

  Future<int> pullCenterTypes() =>
      _pullTable('center_type', upsert: (row) async {
        await db
            .into(db.centerTypes)
            .insertOnConflictUpdate(CenterTypesCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'center_type', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'center_type', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 150);

  Future<int> pullModalities() => _pullTable('modality', upsert: (row) async {
        await db.into(db.modalities).insertOnConflictUpdate(ModalitiesCompanion(
          id: d.Value(row['id']),
          createdAt: d.Value(_toDate(row['created_at'],
              table: 'modality', row: row, field: 'created_at')),
          updatedAt: d.Value(_toDate(row['updated_at'],
              table: 'modality', row: row, field: 'updated_at')),
          titleAr: d.Value(row['title_ar']),
          titleEng: d.Value(row['title_eng']),
          isActive: d.Value(row['is_active'] ?? true),
          code: d.Value(row['code'] ?? ''),
        ));
      }, pageSize: 150);

  Future<int> pullWgqQuestions() =>
      _pullTable('wgq_question', upsert: (row) async {
        await db
            .into(db.wgqQuestions)
            .insertOnConflictUpdate(WgqQuestionsCompanion(
              id: d.Value(row['id']),
              createdAt: d.Value(_toDate(row['created_at'],
                  table: 'wgq_question', row: row, field: 'created_at')),
              updatedAt: d.Value(_toDate(row['updated_at'],
                  table: 'wgq_question', row: row, field: 'updated_at')),
              titleAr: d.Value(row['title_ar']),
              titleEng: d.Value(row['title_eng']),
              isActive: d.Value(row['is_active'] ?? true),
              code: d.Value(row['code'] ?? ''),
            ));
      }, pageSize: 200);

  // ---------------------- Orchestrator ----------------------

  Future<void> pullAll() async {
    // Light/very small first
    await pullGenders();
    await pullRelations();
    await pullMaritalStatus();
    await pullJobs();
    await pullNationalities();
    await pullEducationLevels();
    await pullEducationStatuses();
    await pullForWhos();
    await pullQuestionTypes();
    await pullDocumentTypes();

    // Form config
    await pullSections();
    await pullAnswerSets();
    await pullAnswerItems();
    await pullQuestions();

    // Services
    await pullRequiredServices();
    await pullServiceStatuses();
    await pullCenterTypes();
    await pullModalities();

    // WGQ
    await pullWgqQuestions();
  }

  // ---------------------- Local getters (unchanged) ----------------------

  Future<List<GendersData>> getGendersLocal() => db.select(db.genders).get();
  Future<List<RelationsData>> getRelationsLocal() => db.select(db.relations).get();
  Future<List<MaritalStatusesData>> getMaritalStatusLocal() =>
      db.select(db.maritalStatus).get();
  Future<List<JobsData>> getJobsLocal() => db.select(db.jobs).get();
  Future<List<NationalitiesData>> getNationalitiesLocal() =>
      db.select(db.nationalities).get();
  Future<List<EducationLevelsData>> getEducationLevelsLocal() =>
      db.select(db.educationLevels).get();
  Future<List<EducationStatusesData>> getEducationStatusesLocal() =>
      db.select(db.educationStatuses).get();
  Future<List<ForWhosData>> getForWhosLocal() => db.select(db.forWhos).get();
  Future<List<QuestionTypesData>> getQuestionTypesLocal() =>
      db.select(db.questionTypes).get();
  Future<List<DocumentTypesData>> getDocumentTypesLocal() =>
      db.select(db.documentTypes).get();

  Future<List<SectionsData>> getSectionsLocal() => db.select(db.sections).get();
  Future<List<AnswerSetsData>> getAnswerSetsLocal() =>
      db.select(db.answerSets).get();
  Future<List<AnswerItemsData>> getAnswerItemsLocal() =>
      db.select(db.answerItems).get();
  Future<List<QuestionsData>> getQuestionsLocal() => db.select(db.questions).get();

  Future<List<RequiredServicesData>> getRequiredServicesLocal() =>
      db.select(db.requiredServices).get();
  Future<List<ServiceStatusesData>> getServiceStatusesLocal() =>
      db.select(db.serviceStatuses).get();
  Future<List<CenterTypesData>> getCenterTypesLocal() =>
      db.select(db.centerTypes).get();
  Future<List<ModalitiesData>> getModalitiesLocal() =>
      db.select(db.modalities).get();
  Future<List<WgqQuestionsData>> getWgqQuestionsLocal() =>
      db.select(db.wgqQuestions).get();
}