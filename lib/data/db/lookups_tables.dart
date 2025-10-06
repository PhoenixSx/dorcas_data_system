
part of 'drift_db.dart';

@DataClassName('RelationsData')
class Relations extends Table {
  @override
  String get tableName => 'relation';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('GendersData')
class Genders extends Table {
  @override
  String get tableName => 'gender';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MaritalStatusesData')
class MaritalStatus extends Table {
  @override
  String get tableName => 'marital_status';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  TextColumn get code => text().named('code')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('JobsData')
class Jobs extends Table {
  @override
  String get tableName => 'job';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('NationalitiesData')
class Nationalities extends Table {
  @override
  String get tableName => 'nationalities';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('EducationLevelsData')
class EducationLevels extends Table {
  @override
  String get tableName => 'education_level';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('EducationStatusesData')
class EducationStatuses extends Table {
  @override
  String get tableName => 'education_status';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DocumentTypesData')
class DocumentTypes extends Table {
  @override
  String get tableName => 'document_type';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  BoolColumn get hasCriteria => boolean().named('has_criteria').withDefault(const Constant(false))();
  TextColumn get criteria => text().named('criteria').nullable()();
  TextColumn get code => text().named('code')();
  TextColumn get forWhoId => text().named('for_who_id').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('RequiredServicesData')
class RequiredServices extends Table {
  @override
  String get tableName => 'required_service';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ServiceStatusesData')
class ServiceStatuses extends Table {
  @override
  String get tableName => 'service_status';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('CenterTypesData')
class CenterTypes extends Table {
  @override
  String get tableName => 'center_type';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ModalitiesData')
class Modalities extends Table {
  @override
  String get tableName => 'modality';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ForWhosData')
class ForWhos extends Table {
  @override
  String get tableName => 'for_who';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('QuestionTypesData')
class QuestionTypes extends Table {
  @override
  String get tableName => 'question_type';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('SectionsData')
class Sections extends Table {
  @override
  String get tableName => 'section';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AnswerSetsData')
class AnswerSets extends Table {
  @override
  String get tableName => 'answer_set';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AnswerItemsData')
class AnswerItems extends Table {
  @override
  String get tableName => 'answer_item';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get answerSetId => text().named('answer_set_id')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('QuestionsData')
class Questions extends Table {
  @override
  String get tableName => 'question';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get code => text().named('code')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  TextColumn get sectionId => text().named('section_id')();
  TextColumn get questionTypeId => text().named('question_type_id').nullable()();
  TextColumn get forWhoId => text().named('for_who_id').nullable()();
  TextColumn get answerSetId => text().named('answer_set_id').nullable()();
  BoolColumn get required => boolean().named('required').withDefault(const Constant(false))();
  IntColumn get position => integer().named('position').withDefault(const Constant(1))();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('WgqQuestionsData')
class WgqQuestions extends Table {
  @override
  String get tableName => 'wgq_question';
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
  TextColumn get titleAr => text().named('title_ar')();
  TextColumn get titleEng => text().named('title_eng')();
  BoolColumn get isActive => boolean().named('is_active').withDefault(const Constant(true))();
  TextColumn get code => text().named('code')();
  @override
  Set<Column> get primaryKey => {id};
}
