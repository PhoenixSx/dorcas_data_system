
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../db/drift_db.dart';
import 'sync_cursor_dao.dart';

class AnswerRepository {
  AnswerRepository(this.db, this.client, this.cursorDao);
  final AppDatabase db;
  final SupabaseClient client;
  final SyncCursorDao cursorDao;

  static const familyAnswerTable = 'family_answer';
  static const multiAnswerTable  = 'multiple_answer_question';

  Future<void> upsertFamilyAnswerLocal(FamilyAnswersData a) async {
    await db.into(db.familyAnswer).insertOnConflictUpdate(a.toCompanion(true));
  }

  Future<void> queueUpsertFamilyAnswer(FamilyAnswersData a) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: familyAnswerTable,
        op: 'upsert',
        rowId: a.id,
        payload: jsonEncode(a.toJson()),
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<void> queueDeleteFamilyAnswer(String id) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: familyAnswerTable,
        op: 'delete',
        rowId: id,
        payload: '{}',
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<int> pullFamilyAnswerDelta({int pageSize = 2000}) async {
    int total = 0;
    DateTime? cursor = await cursorDao.getCursor(familyAnswerTable);
    String since = (cursor ?? DateTime.parse('1900-01-01T00:00:00Z')).toIso8601String();

    DateTime? maxSeen;
    while (true) {
      final res = await client
          .from(familyAnswerTable)
          .select('*')
          .gt('updated_at', since)
          .order('updated_at', ascending: true)
          .limit(pageSize);

      final list = (res as List).cast<Map<String, dynamic>>();
      if (list.isEmpty) break;

      await db.transaction(() async {
        for (final row in list) {
          final a = FamilyAnswersData.fromJson(row);
          await upsertFamilyAnswerLocal(a);
          total++;
          if (maxSeen == null || a.updatedAt.isAfter(maxSeen!)) maxSeen = a.updatedAt;
        }
      });

      if (list.length < pageSize) break;
      since = list.last['updated_at'];
    }

    if (maxSeen != null) await cursorDao.setCursor(familyAnswerTable, maxSeen!);
    return total;
  }

  Future<void> upsertMultiAnswerLocal(MultiAnswerData m) async {
    await db.into(db.multipleAnswerQuestion).insertOnConflictUpdate(m.toCompanion(true));
  }

  Future<void> queueUpsertMultiAnswer(MultiAnswerData m) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: multiAnswerTable,
        op: 'upsert',
        rowId: m.id,
        payload: jsonEncode(m.toJson()),
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<void> queueDeleteMultiAnswer(String id) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: multiAnswerTable,
        op: 'delete',
        rowId: id,
        payload: '{}',
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<int> pullMultiAnswerDelta({int pageSize = 4000}) async {
    int total = 0;
    DateTime? cursor = await cursorDao.getCursor(multiAnswerTable);
    String since = (cursor ?? DateTime.parse('1900-01-01T00:00:00Z')).toIso8601String();

    DateTime? maxSeen;
    while (true) {
      final res = await client
          .from(multiAnswerTable)
          .select('*')
          .gt('updated_at', since)
          .order('updated_at', ascending: true)
          .limit(pageSize);

      final list = (res as List).cast<Map<String, dynamic>>();
      if (list.isEmpty) break;

      await db.transaction(() async {
        for (final row in list) {
          final m = MultiAnswerData.fromJson(row);
          await upsertMultiAnswerLocal(m);
          total++;
          if (maxSeen == null || m.updatedAt.isAfter(maxSeen!)) maxSeen = m.updatedAt;
        }
      });

      if (list.length < pageSize) break;
      since = list.last['updated_at'];
    }

    if (maxSeen != null) await cursorDao.setCursor(multiAnswerTable, maxSeen!);
    return total;
  }
}
