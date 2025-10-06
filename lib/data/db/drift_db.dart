// ignore_for_file: unnecessary_this

import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'drift_db.g.dart';
part 'lookups_tables.dart';

@DataClassName('FamiliesData')
class Families extends Table {
  @override
  String get tableName => 'family';

  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();

  DateTimeColumn get registrationDate =>
      dateTime().named('registration_date')();
  TextColumn get staffId => text().named('staff_id').nullable()();
  TextColumn get modalityId => text().named('modality_id').nullable()();
  TextColumn get centerId => text().named('center_id').nullable()();
  TextColumn get locationId => text().named('location_id').nullable()();
  TextColumn get streetName => text().named('street_name').nullable()();
  IntColumn get numOfBuilding =>
      integer().named('num_of_building').nullable()();
  IntColumn get floorNumber => integer().named('floor_number').nullable()();
  TextColumn get documentTypeId =>
      text().named('document_type_id').nullable()();
  TextColumn get documentNum => text().named('document_num').nullable()();
  TextColumn get socialStatusId =>
      text().named('social_status_id').nullable()();
  BoolColumn get hasLostMembers =>
      boolean().named('has_lost_members').withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MembersData')
class Members extends Table {
  @override
  String get tableName => 'member';

  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();

  BoolColumn get isRespondent => boolean().named('is_respondent')();
  BoolColumn get isHoh => boolean().named('is_hoh')();
  TextColumn get firstName => text().named('first_name')();
  TextColumn get fatherName => text().named('father_name')();
  TextColumn get lastName => text().named('last_name')();
  DateTimeColumn get dateOfBirth => dateTime().named('date_of_birth')();

  TextColumn get nationalityId => text().named('nationality_id').nullable()();
  TextColumn get documentTypeId =>
      text().named('document_type_id').nullable()();
  TextColumn get documentNum => text().named('document_num').nullable()();
  TextColumn get phone1 => text().named('phone_number_1').nullable()();
  TextColumn get phone2 => text().named('phone_number_2').nullable()();
  TextColumn get maritalStatusId => text().named('marital_status_id')();
  TextColumn get relationId => text().named('relation_id')();
  TextColumn get familyId => text().named('family_id')();
  TextColumn get genderId => text().named('gender_id').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('FamilyAnswersData')
class FamilyAnswer extends Table {
  @override
  String get tableName => 'family_answer';

  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();

  TextColumn get questionId => text().named('question_id')();

  IntColumn get valueInt => integer().named('value_int').nullable()();
  RealColumn get valueFloat => real().named('value_float').nullable()();
  BoolColumn get valueBool => boolean().named('value_bool').nullable()();
  DateTimeColumn get valueDate => dateTime().named('value_date').nullable()();
  TextColumn get valueTime => text().named('value_time').nullable()();
  DateTimeColumn get valueDatetime =>
      dateTime().named('value_datetime').nullable()();
  TextColumn get valueText => text().named('value_text').nullable()();

  TextColumn get singleValueId => text().named('single_value_id').nullable()();
  TextColumn get familyId => text().named('family_id')();
  TextColumn get memberId => text().named('member_id').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MultiAnswerData')
class MultipleAnswerQuestion extends Table {
  @override
  String get tableName => 'multiple_answer_question';

  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();

  TextColumn get familyAnswerId => text().named('family_answer_id')();
  TextColumn get answerItemId => text().named('answer_item_id')();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<Set<Column>> get uniqueKeys => [
        {familyAnswerId, answerItemId},
      ];
}

class Outbox extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get targetTable => text().named('table_name')();
  TextColumn get op => text()();
  TextColumn get rowId => text().named('row_id')();
  TextColumn get payload => text()();
  DateTimeColumn get queuedAt => dateTime().named('queued_at')();
  IntColumn get attempt => integer().withDefault(const Constant(0))();
  TextColumn get lastError => text().named('last_error').nullable()();
}

class SyncCursor extends Table {
  TextColumn get cursorTable => text().named('table_name')();
  DateTimeColumn get lastUpdatedAt =>
      dateTime().named('last_updated_at').nullable()();
  @override
  Set<Column> get primaryKey => {cursorTable};
}

@DriftDatabase(tables: [
  // Operational
  Families, Members, FamilyAnswer, MultipleAnswerQuestion,
  // Lookups (from part file)
  Relations, Genders, MaritalStatus, Jobs, Nationalities,
  EducationLevels, EducationStatuses, DocumentTypes, RequiredServices,
  ServiceStatuses, CenterTypes, Modalities, ForWhos, QuestionTypes,
  Sections, AnswerSets, AnswerItems, Questions, WgqQuestions,
  // Local helpers
  Outbox, SyncCursor,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          // Create any tables that were added after v1
          await m.createTable(relations);
          await m.createTable(genders);
          await m.createTable(maritalStatus);
          await m.createTable(jobs);
          await m.createTable(nationalities);
          await m.createTable(educationLevels);
          await m.createTable(educationStatuses);
          await m.createTable(documentTypes);
          await m.createTable(requiredServices);
          await m.createTable(serviceStatuses);
          await m.createTable(centerTypes);
          await m.createTable(modalities);
          await m.createTable(forWhos);
          await m.createTable(questionTypes);
          await m.createTable(sections);
          await m.createTable(answerSets);
          await m.createTable(answerItems);
          await m.createTable(questions);
          await m.createTable(wgqQuestions);
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationSupportDirectory();
    final file = File(p.join(dir.path, 'app.db'));
    return NativeDatabase.createInBackground(file);
  });
}
