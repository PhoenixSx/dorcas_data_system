// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $FamiliesTable extends Families
    with TableInfo<$FamiliesTable, FamiliesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamiliesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _registrationDateMeta =
      const VerificationMeta('registrationDate');
  @override
  late final GeneratedColumn<DateTime> registrationDate =
      GeneratedColumn<DateTime>('registration_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _staffIdMeta =
      const VerificationMeta('staffId');
  @override
  late final GeneratedColumn<String> staffId = GeneratedColumn<String>(
      'staff_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modalityIdMeta =
      const VerificationMeta('modalityId');
  @override
  late final GeneratedColumn<String> modalityId = GeneratedColumn<String>(
      'modality_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _centerIdMeta =
      const VerificationMeta('centerId');
  @override
  late final GeneratedColumn<String> centerId = GeneratedColumn<String>(
      'center_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locationIdMeta =
      const VerificationMeta('locationId');
  @override
  late final GeneratedColumn<String> locationId = GeneratedColumn<String>(
      'location_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _streetNameMeta =
      const VerificationMeta('streetName');
  @override
  late final GeneratedColumn<String> streetName = GeneratedColumn<String>(
      'street_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numOfBuildingMeta =
      const VerificationMeta('numOfBuilding');
  @override
  late final GeneratedColumn<int> numOfBuilding = GeneratedColumn<int>(
      'num_of_building', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _floorNumberMeta =
      const VerificationMeta('floorNumber');
  @override
  late final GeneratedColumn<int> floorNumber = GeneratedColumn<int>(
      'floor_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _documentTypeIdMeta =
      const VerificationMeta('documentTypeId');
  @override
  late final GeneratedColumn<String> documentTypeId = GeneratedColumn<String>(
      'document_type_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _documentNumMeta =
      const VerificationMeta('documentNum');
  @override
  late final GeneratedColumn<String> documentNum = GeneratedColumn<String>(
      'document_num', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _socialStatusIdMeta =
      const VerificationMeta('socialStatusId');
  @override
  late final GeneratedColumn<String> socialStatusId = GeneratedColumn<String>(
      'social_status_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hasLostMembersMeta =
      const VerificationMeta('hasLostMembers');
  @override
  late final GeneratedColumn<bool> hasLostMembers = GeneratedColumn<bool>(
      'has_lost_members', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_lost_members" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        registrationDate,
        staffId,
        modalityId,
        centerId,
        locationId,
        streetName,
        numOfBuilding,
        floorNumber,
        documentTypeId,
        documentNum,
        socialStatusId,
        hasLostMembers
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family';
  @override
  VerificationContext validateIntegrity(Insertable<FamiliesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('registration_date')) {
      context.handle(
          _registrationDateMeta,
          registrationDate.isAcceptableOrUnknown(
              data['registration_date']!, _registrationDateMeta));
    } else if (isInserting) {
      context.missing(_registrationDateMeta);
    }
    if (data.containsKey('staff_id')) {
      context.handle(_staffIdMeta,
          staffId.isAcceptableOrUnknown(data['staff_id']!, _staffIdMeta));
    }
    if (data.containsKey('modality_id')) {
      context.handle(
          _modalityIdMeta,
          modalityId.isAcceptableOrUnknown(
              data['modality_id']!, _modalityIdMeta));
    }
    if (data.containsKey('center_id')) {
      context.handle(_centerIdMeta,
          centerId.isAcceptableOrUnknown(data['center_id']!, _centerIdMeta));
    }
    if (data.containsKey('location_id')) {
      context.handle(
          _locationIdMeta,
          locationId.isAcceptableOrUnknown(
              data['location_id']!, _locationIdMeta));
    }
    if (data.containsKey('street_name')) {
      context.handle(
          _streetNameMeta,
          streetName.isAcceptableOrUnknown(
              data['street_name']!, _streetNameMeta));
    }
    if (data.containsKey('num_of_building')) {
      context.handle(
          _numOfBuildingMeta,
          numOfBuilding.isAcceptableOrUnknown(
              data['num_of_building']!, _numOfBuildingMeta));
    }
    if (data.containsKey('floor_number')) {
      context.handle(
          _floorNumberMeta,
          floorNumber.isAcceptableOrUnknown(
              data['floor_number']!, _floorNumberMeta));
    }
    if (data.containsKey('document_type_id')) {
      context.handle(
          _documentTypeIdMeta,
          documentTypeId.isAcceptableOrUnknown(
              data['document_type_id']!, _documentTypeIdMeta));
    }
    if (data.containsKey('document_num')) {
      context.handle(
          _documentNumMeta,
          documentNum.isAcceptableOrUnknown(
              data['document_num']!, _documentNumMeta));
    }
    if (data.containsKey('social_status_id')) {
      context.handle(
          _socialStatusIdMeta,
          socialStatusId.isAcceptableOrUnknown(
              data['social_status_id']!, _socialStatusIdMeta));
    }
    if (data.containsKey('has_lost_members')) {
      context.handle(
          _hasLostMembersMeta,
          hasLostMembers.isAcceptableOrUnknown(
              data['has_lost_members']!, _hasLostMembersMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamiliesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamiliesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      registrationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}registration_date'])!,
      staffId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}staff_id']),
      modalityId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}modality_id']),
      centerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}center_id']),
      locationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location_id']),
      streetName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street_name']),
      numOfBuilding: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}num_of_building']),
      floorNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}floor_number']),
      documentTypeId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}document_type_id']),
      documentNum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}document_num']),
      socialStatusId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}social_status_id']),
      hasLostMembers: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_lost_members'])!,
    );
  }

  @override
  $FamiliesTable createAlias(String alias) {
    return $FamiliesTable(attachedDatabase, alias);
  }
}

class FamiliesData extends DataClass implements Insertable<FamiliesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime registrationDate;
  final String? staffId;
  final String? modalityId;
  final String? centerId;
  final String? locationId;
  final String? streetName;
  final int? numOfBuilding;
  final int? floorNumber;
  final String? documentTypeId;
  final String? documentNum;
  final String? socialStatusId;
  final bool hasLostMembers;
  const FamiliesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.registrationDate,
      this.staffId,
      this.modalityId,
      this.centerId,
      this.locationId,
      this.streetName,
      this.numOfBuilding,
      this.floorNumber,
      this.documentTypeId,
      this.documentNum,
      this.socialStatusId,
      required this.hasLostMembers});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['registration_date'] = Variable<DateTime>(registrationDate);
    if (!nullToAbsent || staffId != null) {
      map['staff_id'] = Variable<String>(staffId);
    }
    if (!nullToAbsent || modalityId != null) {
      map['modality_id'] = Variable<String>(modalityId);
    }
    if (!nullToAbsent || centerId != null) {
      map['center_id'] = Variable<String>(centerId);
    }
    if (!nullToAbsent || locationId != null) {
      map['location_id'] = Variable<String>(locationId);
    }
    if (!nullToAbsent || streetName != null) {
      map['street_name'] = Variable<String>(streetName);
    }
    if (!nullToAbsent || numOfBuilding != null) {
      map['num_of_building'] = Variable<int>(numOfBuilding);
    }
    if (!nullToAbsent || floorNumber != null) {
      map['floor_number'] = Variable<int>(floorNumber);
    }
    if (!nullToAbsent || documentTypeId != null) {
      map['document_type_id'] = Variable<String>(documentTypeId);
    }
    if (!nullToAbsent || documentNum != null) {
      map['document_num'] = Variable<String>(documentNum);
    }
    if (!nullToAbsent || socialStatusId != null) {
      map['social_status_id'] = Variable<String>(socialStatusId);
    }
    map['has_lost_members'] = Variable<bool>(hasLostMembers);
    return map;
  }

  FamiliesCompanion toCompanion(bool nullToAbsent) {
    return FamiliesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      registrationDate: Value(registrationDate),
      staffId: staffId == null && nullToAbsent
          ? const Value.absent()
          : Value(staffId),
      modalityId: modalityId == null && nullToAbsent
          ? const Value.absent()
          : Value(modalityId),
      centerId: centerId == null && nullToAbsent
          ? const Value.absent()
          : Value(centerId),
      locationId: locationId == null && nullToAbsent
          ? const Value.absent()
          : Value(locationId),
      streetName: streetName == null && nullToAbsent
          ? const Value.absent()
          : Value(streetName),
      numOfBuilding: numOfBuilding == null && nullToAbsent
          ? const Value.absent()
          : Value(numOfBuilding),
      floorNumber: floorNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(floorNumber),
      documentTypeId: documentTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(documentTypeId),
      documentNum: documentNum == null && nullToAbsent
          ? const Value.absent()
          : Value(documentNum),
      socialStatusId: socialStatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(socialStatusId),
      hasLostMembers: Value(hasLostMembers),
    );
  }

  factory FamiliesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamiliesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      registrationDate: serializer.fromJson<DateTime>(json['registrationDate']),
      staffId: serializer.fromJson<String?>(json['staffId']),
      modalityId: serializer.fromJson<String?>(json['modalityId']),
      centerId: serializer.fromJson<String?>(json['centerId']),
      locationId: serializer.fromJson<String?>(json['locationId']),
      streetName: serializer.fromJson<String?>(json['streetName']),
      numOfBuilding: serializer.fromJson<int?>(json['numOfBuilding']),
      floorNumber: serializer.fromJson<int?>(json['floorNumber']),
      documentTypeId: serializer.fromJson<String?>(json['documentTypeId']),
      documentNum: serializer.fromJson<String?>(json['documentNum']),
      socialStatusId: serializer.fromJson<String?>(json['socialStatusId']),
      hasLostMembers: serializer.fromJson<bool>(json['hasLostMembers']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'registrationDate': serializer.toJson<DateTime>(registrationDate),
      'staffId': serializer.toJson<String?>(staffId),
      'modalityId': serializer.toJson<String?>(modalityId),
      'centerId': serializer.toJson<String?>(centerId),
      'locationId': serializer.toJson<String?>(locationId),
      'streetName': serializer.toJson<String?>(streetName),
      'numOfBuilding': serializer.toJson<int?>(numOfBuilding),
      'floorNumber': serializer.toJson<int?>(floorNumber),
      'documentTypeId': serializer.toJson<String?>(documentTypeId),
      'documentNum': serializer.toJson<String?>(documentNum),
      'socialStatusId': serializer.toJson<String?>(socialStatusId),
      'hasLostMembers': serializer.toJson<bool>(hasLostMembers),
    };
  }

  FamiliesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? registrationDate,
          Value<String?> staffId = const Value.absent(),
          Value<String?> modalityId = const Value.absent(),
          Value<String?> centerId = const Value.absent(),
          Value<String?> locationId = const Value.absent(),
          Value<String?> streetName = const Value.absent(),
          Value<int?> numOfBuilding = const Value.absent(),
          Value<int?> floorNumber = const Value.absent(),
          Value<String?> documentTypeId = const Value.absent(),
          Value<String?> documentNum = const Value.absent(),
          Value<String?> socialStatusId = const Value.absent(),
          bool? hasLostMembers}) =>
      FamiliesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        registrationDate: registrationDate ?? this.registrationDate,
        staffId: staffId.present ? staffId.value : this.staffId,
        modalityId: modalityId.present ? modalityId.value : this.modalityId,
        centerId: centerId.present ? centerId.value : this.centerId,
        locationId: locationId.present ? locationId.value : this.locationId,
        streetName: streetName.present ? streetName.value : this.streetName,
        numOfBuilding:
            numOfBuilding.present ? numOfBuilding.value : this.numOfBuilding,
        floorNumber: floorNumber.present ? floorNumber.value : this.floorNumber,
        documentTypeId:
            documentTypeId.present ? documentTypeId.value : this.documentTypeId,
        documentNum: documentNum.present ? documentNum.value : this.documentNum,
        socialStatusId:
            socialStatusId.present ? socialStatusId.value : this.socialStatusId,
        hasLostMembers: hasLostMembers ?? this.hasLostMembers,
      );
  FamiliesData copyWithCompanion(FamiliesCompanion data) {
    return FamiliesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      registrationDate: data.registrationDate.present
          ? data.registrationDate.value
          : this.registrationDate,
      staffId: data.staffId.present ? data.staffId.value : this.staffId,
      modalityId:
          data.modalityId.present ? data.modalityId.value : this.modalityId,
      centerId: data.centerId.present ? data.centerId.value : this.centerId,
      locationId:
          data.locationId.present ? data.locationId.value : this.locationId,
      streetName:
          data.streetName.present ? data.streetName.value : this.streetName,
      numOfBuilding: data.numOfBuilding.present
          ? data.numOfBuilding.value
          : this.numOfBuilding,
      floorNumber:
          data.floorNumber.present ? data.floorNumber.value : this.floorNumber,
      documentTypeId: data.documentTypeId.present
          ? data.documentTypeId.value
          : this.documentTypeId,
      documentNum:
          data.documentNum.present ? data.documentNum.value : this.documentNum,
      socialStatusId: data.socialStatusId.present
          ? data.socialStatusId.value
          : this.socialStatusId,
      hasLostMembers: data.hasLostMembers.present
          ? data.hasLostMembers.value
          : this.hasLostMembers,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FamiliesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('registrationDate: $registrationDate, ')
          ..write('staffId: $staffId, ')
          ..write('modalityId: $modalityId, ')
          ..write('centerId: $centerId, ')
          ..write('locationId: $locationId, ')
          ..write('streetName: $streetName, ')
          ..write('numOfBuilding: $numOfBuilding, ')
          ..write('floorNumber: $floorNumber, ')
          ..write('documentTypeId: $documentTypeId, ')
          ..write('documentNum: $documentNum, ')
          ..write('socialStatusId: $socialStatusId, ')
          ..write('hasLostMembers: $hasLostMembers')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      registrationDate,
      staffId,
      modalityId,
      centerId,
      locationId,
      streetName,
      numOfBuilding,
      floorNumber,
      documentTypeId,
      documentNum,
      socialStatusId,
      hasLostMembers);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamiliesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.registrationDate == this.registrationDate &&
          other.staffId == this.staffId &&
          other.modalityId == this.modalityId &&
          other.centerId == this.centerId &&
          other.locationId == this.locationId &&
          other.streetName == this.streetName &&
          other.numOfBuilding == this.numOfBuilding &&
          other.floorNumber == this.floorNumber &&
          other.documentTypeId == this.documentTypeId &&
          other.documentNum == this.documentNum &&
          other.socialStatusId == this.socialStatusId &&
          other.hasLostMembers == this.hasLostMembers);
}

class FamiliesCompanion extends UpdateCompanion<FamiliesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> registrationDate;
  final Value<String?> staffId;
  final Value<String?> modalityId;
  final Value<String?> centerId;
  final Value<String?> locationId;
  final Value<String?> streetName;
  final Value<int?> numOfBuilding;
  final Value<int?> floorNumber;
  final Value<String?> documentTypeId;
  final Value<String?> documentNum;
  final Value<String?> socialStatusId;
  final Value<bool> hasLostMembers;
  final Value<int> rowid;
  const FamiliesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.registrationDate = const Value.absent(),
    this.staffId = const Value.absent(),
    this.modalityId = const Value.absent(),
    this.centerId = const Value.absent(),
    this.locationId = const Value.absent(),
    this.streetName = const Value.absent(),
    this.numOfBuilding = const Value.absent(),
    this.floorNumber = const Value.absent(),
    this.documentTypeId = const Value.absent(),
    this.documentNum = const Value.absent(),
    this.socialStatusId = const Value.absent(),
    this.hasLostMembers = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FamiliesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime registrationDate,
    this.staffId = const Value.absent(),
    this.modalityId = const Value.absent(),
    this.centerId = const Value.absent(),
    this.locationId = const Value.absent(),
    this.streetName = const Value.absent(),
    this.numOfBuilding = const Value.absent(),
    this.floorNumber = const Value.absent(),
    this.documentTypeId = const Value.absent(),
    this.documentNum = const Value.absent(),
    this.socialStatusId = const Value.absent(),
    this.hasLostMembers = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        registrationDate = Value(registrationDate);
  static Insertable<FamiliesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? registrationDate,
    Expression<String>? staffId,
    Expression<String>? modalityId,
    Expression<String>? centerId,
    Expression<String>? locationId,
    Expression<String>? streetName,
    Expression<int>? numOfBuilding,
    Expression<int>? floorNumber,
    Expression<String>? documentTypeId,
    Expression<String>? documentNum,
    Expression<String>? socialStatusId,
    Expression<bool>? hasLostMembers,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (registrationDate != null) 'registration_date': registrationDate,
      if (staffId != null) 'staff_id': staffId,
      if (modalityId != null) 'modality_id': modalityId,
      if (centerId != null) 'center_id': centerId,
      if (locationId != null) 'location_id': locationId,
      if (streetName != null) 'street_name': streetName,
      if (numOfBuilding != null) 'num_of_building': numOfBuilding,
      if (floorNumber != null) 'floor_number': floorNumber,
      if (documentTypeId != null) 'document_type_id': documentTypeId,
      if (documentNum != null) 'document_num': documentNum,
      if (socialStatusId != null) 'social_status_id': socialStatusId,
      if (hasLostMembers != null) 'has_lost_members': hasLostMembers,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FamiliesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? registrationDate,
      Value<String?>? staffId,
      Value<String?>? modalityId,
      Value<String?>? centerId,
      Value<String?>? locationId,
      Value<String?>? streetName,
      Value<int?>? numOfBuilding,
      Value<int?>? floorNumber,
      Value<String?>? documentTypeId,
      Value<String?>? documentNum,
      Value<String?>? socialStatusId,
      Value<bool>? hasLostMembers,
      Value<int>? rowid}) {
    return FamiliesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      registrationDate: registrationDate ?? this.registrationDate,
      staffId: staffId ?? this.staffId,
      modalityId: modalityId ?? this.modalityId,
      centerId: centerId ?? this.centerId,
      locationId: locationId ?? this.locationId,
      streetName: streetName ?? this.streetName,
      numOfBuilding: numOfBuilding ?? this.numOfBuilding,
      floorNumber: floorNumber ?? this.floorNumber,
      documentTypeId: documentTypeId ?? this.documentTypeId,
      documentNum: documentNum ?? this.documentNum,
      socialStatusId: socialStatusId ?? this.socialStatusId,
      hasLostMembers: hasLostMembers ?? this.hasLostMembers,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (registrationDate.present) {
      map['registration_date'] = Variable<DateTime>(registrationDate.value);
    }
    if (staffId.present) {
      map['staff_id'] = Variable<String>(staffId.value);
    }
    if (modalityId.present) {
      map['modality_id'] = Variable<String>(modalityId.value);
    }
    if (centerId.present) {
      map['center_id'] = Variable<String>(centerId.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<String>(locationId.value);
    }
    if (streetName.present) {
      map['street_name'] = Variable<String>(streetName.value);
    }
    if (numOfBuilding.present) {
      map['num_of_building'] = Variable<int>(numOfBuilding.value);
    }
    if (floorNumber.present) {
      map['floor_number'] = Variable<int>(floorNumber.value);
    }
    if (documentTypeId.present) {
      map['document_type_id'] = Variable<String>(documentTypeId.value);
    }
    if (documentNum.present) {
      map['document_num'] = Variable<String>(documentNum.value);
    }
    if (socialStatusId.present) {
      map['social_status_id'] = Variable<String>(socialStatusId.value);
    }
    if (hasLostMembers.present) {
      map['has_lost_members'] = Variable<bool>(hasLostMembers.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamiliesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('registrationDate: $registrationDate, ')
          ..write('staffId: $staffId, ')
          ..write('modalityId: $modalityId, ')
          ..write('centerId: $centerId, ')
          ..write('locationId: $locationId, ')
          ..write('streetName: $streetName, ')
          ..write('numOfBuilding: $numOfBuilding, ')
          ..write('floorNumber: $floorNumber, ')
          ..write('documentTypeId: $documentTypeId, ')
          ..write('documentNum: $documentNum, ')
          ..write('socialStatusId: $socialStatusId, ')
          ..write('hasLostMembers: $hasLostMembers, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MembersTable extends Members with TableInfo<$MembersTable, MembersData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MembersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isRespondentMeta =
      const VerificationMeta('isRespondent');
  @override
  late final GeneratedColumn<bool> isRespondent = GeneratedColumn<bool>(
      'is_respondent', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_respondent" IN (0, 1))'));
  static const VerificationMeta _isHohMeta = const VerificationMeta('isHoh');
  @override
  late final GeneratedColumn<bool> isHoh = GeneratedColumn<bool>(
      'is_hoh', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_hoh" IN (0, 1))'));
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fatherNameMeta =
      const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String> fatherName = GeneratedColumn<String>(
      'father_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
      'date_of_birth', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _nationalityIdMeta =
      const VerificationMeta('nationalityId');
  @override
  late final GeneratedColumn<String> nationalityId = GeneratedColumn<String>(
      'nationality_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _documentTypeIdMeta =
      const VerificationMeta('documentTypeId');
  @override
  late final GeneratedColumn<String> documentTypeId = GeneratedColumn<String>(
      'document_type_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _documentNumMeta =
      const VerificationMeta('documentNum');
  @override
  late final GeneratedColumn<String> documentNum = GeneratedColumn<String>(
      'document_num', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phone1Meta = const VerificationMeta('phone1');
  @override
  late final GeneratedColumn<String> phone1 = GeneratedColumn<String>(
      'phone_number_1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phone2Meta = const VerificationMeta('phone2');
  @override
  late final GeneratedColumn<String> phone2 = GeneratedColumn<String>(
      'phone_number_2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _maritalStatusIdMeta =
      const VerificationMeta('maritalStatusId');
  @override
  late final GeneratedColumn<String> maritalStatusId = GeneratedColumn<String>(
      'marital_status_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _relationIdMeta =
      const VerificationMeta('relationId');
  @override
  late final GeneratedColumn<String> relationId = GeneratedColumn<String>(
      'relation_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _familyIdMeta =
      const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String> familyId = GeneratedColumn<String>(
      'family_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genderIdMeta =
      const VerificationMeta('genderId');
  @override
  late final GeneratedColumn<String> genderId = GeneratedColumn<String>(
      'gender_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        isRespondent,
        isHoh,
        firstName,
        fatherName,
        lastName,
        dateOfBirth,
        nationalityId,
        documentTypeId,
        documentNum,
        phone1,
        phone2,
        maritalStatusId,
        relationId,
        familyId,
        genderId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'member';
  @override
  VerificationContext validateIntegrity(Insertable<MembersData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_respondent')) {
      context.handle(
          _isRespondentMeta,
          isRespondent.isAcceptableOrUnknown(
              data['is_respondent']!, _isRespondentMeta));
    } else if (isInserting) {
      context.missing(_isRespondentMeta);
    }
    if (data.containsKey('is_hoh')) {
      context.handle(
          _isHohMeta, isHoh.isAcceptableOrUnknown(data['is_hoh']!, _isHohMeta));
    } else if (isInserting) {
      context.missing(_isHohMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    } else if (isInserting) {
      context.missing(_fatherNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    } else if (isInserting) {
      context.missing(_dateOfBirthMeta);
    }
    if (data.containsKey('nationality_id')) {
      context.handle(
          _nationalityIdMeta,
          nationalityId.isAcceptableOrUnknown(
              data['nationality_id']!, _nationalityIdMeta));
    }
    if (data.containsKey('document_type_id')) {
      context.handle(
          _documentTypeIdMeta,
          documentTypeId.isAcceptableOrUnknown(
              data['document_type_id']!, _documentTypeIdMeta));
    }
    if (data.containsKey('document_num')) {
      context.handle(
          _documentNumMeta,
          documentNum.isAcceptableOrUnknown(
              data['document_num']!, _documentNumMeta));
    }
    if (data.containsKey('phone_number_1')) {
      context.handle(_phone1Meta,
          phone1.isAcceptableOrUnknown(data['phone_number_1']!, _phone1Meta));
    }
    if (data.containsKey('phone_number_2')) {
      context.handle(_phone2Meta,
          phone2.isAcceptableOrUnknown(data['phone_number_2']!, _phone2Meta));
    }
    if (data.containsKey('marital_status_id')) {
      context.handle(
          _maritalStatusIdMeta,
          maritalStatusId.isAcceptableOrUnknown(
              data['marital_status_id']!, _maritalStatusIdMeta));
    } else if (isInserting) {
      context.missing(_maritalStatusIdMeta);
    }
    if (data.containsKey('relation_id')) {
      context.handle(
          _relationIdMeta,
          relationId.isAcceptableOrUnknown(
              data['relation_id']!, _relationIdMeta));
    } else if (isInserting) {
      context.missing(_relationIdMeta);
    }
    if (data.containsKey('family_id')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['family_id']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('gender_id')) {
      context.handle(_genderIdMeta,
          genderId.isAcceptableOrUnknown(data['gender_id']!, _genderIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MembersData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MembersData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      isRespondent: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_respondent'])!,
      isHoh: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_hoh'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      fatherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      dateOfBirth: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_of_birth'])!,
      nationalityId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nationality_id']),
      documentTypeId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}document_type_id']),
      documentNum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}document_num']),
      phone1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number_1']),
      phone2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number_2']),
      maritalStatusId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}marital_status_id'])!,
      relationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}relation_id'])!,
      familyId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}family_id'])!,
      genderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender_id']),
    );
  }

  @override
  $MembersTable createAlias(String alias) {
    return $MembersTable(attachedDatabase, alias);
  }
}

class MembersData extends DataClass implements Insertable<MembersData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isRespondent;
  final bool isHoh;
  final String firstName;
  final String fatherName;
  final String lastName;
  final DateTime dateOfBirth;
  final String? nationalityId;
  final String? documentTypeId;
  final String? documentNum;
  final String? phone1;
  final String? phone2;
  final String maritalStatusId;
  final String relationId;
  final String familyId;
  final String? genderId;
  const MembersData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.isRespondent,
      required this.isHoh,
      required this.firstName,
      required this.fatherName,
      required this.lastName,
      required this.dateOfBirth,
      this.nationalityId,
      this.documentTypeId,
      this.documentNum,
      this.phone1,
      this.phone2,
      required this.maritalStatusId,
      required this.relationId,
      required this.familyId,
      this.genderId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_respondent'] = Variable<bool>(isRespondent);
    map['is_hoh'] = Variable<bool>(isHoh);
    map['first_name'] = Variable<String>(firstName);
    map['father_name'] = Variable<String>(fatherName);
    map['last_name'] = Variable<String>(lastName);
    map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    if (!nullToAbsent || nationalityId != null) {
      map['nationality_id'] = Variable<String>(nationalityId);
    }
    if (!nullToAbsent || documentTypeId != null) {
      map['document_type_id'] = Variable<String>(documentTypeId);
    }
    if (!nullToAbsent || documentNum != null) {
      map['document_num'] = Variable<String>(documentNum);
    }
    if (!nullToAbsent || phone1 != null) {
      map['phone_number_1'] = Variable<String>(phone1);
    }
    if (!nullToAbsent || phone2 != null) {
      map['phone_number_2'] = Variable<String>(phone2);
    }
    map['marital_status_id'] = Variable<String>(maritalStatusId);
    map['relation_id'] = Variable<String>(relationId);
    map['family_id'] = Variable<String>(familyId);
    if (!nullToAbsent || genderId != null) {
      map['gender_id'] = Variable<String>(genderId);
    }
    return map;
  }

  MembersCompanion toCompanion(bool nullToAbsent) {
    return MembersCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isRespondent: Value(isRespondent),
      isHoh: Value(isHoh),
      firstName: Value(firstName),
      fatherName: Value(fatherName),
      lastName: Value(lastName),
      dateOfBirth: Value(dateOfBirth),
      nationalityId: nationalityId == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalityId),
      documentTypeId: documentTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(documentTypeId),
      documentNum: documentNum == null && nullToAbsent
          ? const Value.absent()
          : Value(documentNum),
      phone1:
          phone1 == null && nullToAbsent ? const Value.absent() : Value(phone1),
      phone2:
          phone2 == null && nullToAbsent ? const Value.absent() : Value(phone2),
      maritalStatusId: Value(maritalStatusId),
      relationId: Value(relationId),
      familyId: Value(familyId),
      genderId: genderId == null && nullToAbsent
          ? const Value.absent()
          : Value(genderId),
    );
  }

  factory MembersData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MembersData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isRespondent: serializer.fromJson<bool>(json['isRespondent']),
      isHoh: serializer.fromJson<bool>(json['isHoh']),
      firstName: serializer.fromJson<String>(json['firstName']),
      fatherName: serializer.fromJson<String>(json['fatherName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      dateOfBirth: serializer.fromJson<DateTime>(json['dateOfBirth']),
      nationalityId: serializer.fromJson<String?>(json['nationalityId']),
      documentTypeId: serializer.fromJson<String?>(json['documentTypeId']),
      documentNum: serializer.fromJson<String?>(json['documentNum']),
      phone1: serializer.fromJson<String?>(json['phone1']),
      phone2: serializer.fromJson<String?>(json['phone2']),
      maritalStatusId: serializer.fromJson<String>(json['maritalStatusId']),
      relationId: serializer.fromJson<String>(json['relationId']),
      familyId: serializer.fromJson<String>(json['familyId']),
      genderId: serializer.fromJson<String?>(json['genderId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isRespondent': serializer.toJson<bool>(isRespondent),
      'isHoh': serializer.toJson<bool>(isHoh),
      'firstName': serializer.toJson<String>(firstName),
      'fatherName': serializer.toJson<String>(fatherName),
      'lastName': serializer.toJson<String>(lastName),
      'dateOfBirth': serializer.toJson<DateTime>(dateOfBirth),
      'nationalityId': serializer.toJson<String?>(nationalityId),
      'documentTypeId': serializer.toJson<String?>(documentTypeId),
      'documentNum': serializer.toJson<String?>(documentNum),
      'phone1': serializer.toJson<String?>(phone1),
      'phone2': serializer.toJson<String?>(phone2),
      'maritalStatusId': serializer.toJson<String>(maritalStatusId),
      'relationId': serializer.toJson<String>(relationId),
      'familyId': serializer.toJson<String>(familyId),
      'genderId': serializer.toJson<String?>(genderId),
    };
  }

  MembersData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          bool? isRespondent,
          bool? isHoh,
          String? firstName,
          String? fatherName,
          String? lastName,
          DateTime? dateOfBirth,
          Value<String?> nationalityId = const Value.absent(),
          Value<String?> documentTypeId = const Value.absent(),
          Value<String?> documentNum = const Value.absent(),
          Value<String?> phone1 = const Value.absent(),
          Value<String?> phone2 = const Value.absent(),
          String? maritalStatusId,
          String? relationId,
          String? familyId,
          Value<String?> genderId = const Value.absent()}) =>
      MembersData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isRespondent: isRespondent ?? this.isRespondent,
        isHoh: isHoh ?? this.isHoh,
        firstName: firstName ?? this.firstName,
        fatherName: fatherName ?? this.fatherName,
        lastName: lastName ?? this.lastName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        nationalityId:
            nationalityId.present ? nationalityId.value : this.nationalityId,
        documentTypeId:
            documentTypeId.present ? documentTypeId.value : this.documentTypeId,
        documentNum: documentNum.present ? documentNum.value : this.documentNum,
        phone1: phone1.present ? phone1.value : this.phone1,
        phone2: phone2.present ? phone2.value : this.phone2,
        maritalStatusId: maritalStatusId ?? this.maritalStatusId,
        relationId: relationId ?? this.relationId,
        familyId: familyId ?? this.familyId,
        genderId: genderId.present ? genderId.value : this.genderId,
      );
  MembersData copyWithCompanion(MembersCompanion data) {
    return MembersData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isRespondent: data.isRespondent.present
          ? data.isRespondent.value
          : this.isRespondent,
      isHoh: data.isHoh.present ? data.isHoh.value : this.isHoh,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      fatherName:
          data.fatherName.present ? data.fatherName.value : this.fatherName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      dateOfBirth:
          data.dateOfBirth.present ? data.dateOfBirth.value : this.dateOfBirth,
      nationalityId: data.nationalityId.present
          ? data.nationalityId.value
          : this.nationalityId,
      documentTypeId: data.documentTypeId.present
          ? data.documentTypeId.value
          : this.documentTypeId,
      documentNum:
          data.documentNum.present ? data.documentNum.value : this.documentNum,
      phone1: data.phone1.present ? data.phone1.value : this.phone1,
      phone2: data.phone2.present ? data.phone2.value : this.phone2,
      maritalStatusId: data.maritalStatusId.present
          ? data.maritalStatusId.value
          : this.maritalStatusId,
      relationId:
          data.relationId.present ? data.relationId.value : this.relationId,
      familyId: data.familyId.present ? data.familyId.value : this.familyId,
      genderId: data.genderId.present ? data.genderId.value : this.genderId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MembersData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isRespondent: $isRespondent, ')
          ..write('isHoh: $isHoh, ')
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('nationalityId: $nationalityId, ')
          ..write('documentTypeId: $documentTypeId, ')
          ..write('documentNum: $documentNum, ')
          ..write('phone1: $phone1, ')
          ..write('phone2: $phone2, ')
          ..write('maritalStatusId: $maritalStatusId, ')
          ..write('relationId: $relationId, ')
          ..write('familyId: $familyId, ')
          ..write('genderId: $genderId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      isRespondent,
      isHoh,
      firstName,
      fatherName,
      lastName,
      dateOfBirth,
      nationalityId,
      documentTypeId,
      documentNum,
      phone1,
      phone2,
      maritalStatusId,
      relationId,
      familyId,
      genderId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MembersData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isRespondent == this.isRespondent &&
          other.isHoh == this.isHoh &&
          other.firstName == this.firstName &&
          other.fatherName == this.fatherName &&
          other.lastName == this.lastName &&
          other.dateOfBirth == this.dateOfBirth &&
          other.nationalityId == this.nationalityId &&
          other.documentTypeId == this.documentTypeId &&
          other.documentNum == this.documentNum &&
          other.phone1 == this.phone1 &&
          other.phone2 == this.phone2 &&
          other.maritalStatusId == this.maritalStatusId &&
          other.relationId == this.relationId &&
          other.familyId == this.familyId &&
          other.genderId == this.genderId);
}

class MembersCompanion extends UpdateCompanion<MembersData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isRespondent;
  final Value<bool> isHoh;
  final Value<String> firstName;
  final Value<String> fatherName;
  final Value<String> lastName;
  final Value<DateTime> dateOfBirth;
  final Value<String?> nationalityId;
  final Value<String?> documentTypeId;
  final Value<String?> documentNum;
  final Value<String?> phone1;
  final Value<String?> phone2;
  final Value<String> maritalStatusId;
  final Value<String> relationId;
  final Value<String> familyId;
  final Value<String?> genderId;
  final Value<int> rowid;
  const MembersCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isRespondent = const Value.absent(),
    this.isHoh = const Value.absent(),
    this.firstName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.nationalityId = const Value.absent(),
    this.documentTypeId = const Value.absent(),
    this.documentNum = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    this.maritalStatusId = const Value.absent(),
    this.relationId = const Value.absent(),
    this.familyId = const Value.absent(),
    this.genderId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MembersCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isRespondent,
    required bool isHoh,
    required String firstName,
    required String fatherName,
    required String lastName,
    required DateTime dateOfBirth,
    this.nationalityId = const Value.absent(),
    this.documentTypeId = const Value.absent(),
    this.documentNum = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    required String maritalStatusId,
    required String relationId,
    required String familyId,
    this.genderId = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        isRespondent = Value(isRespondent),
        isHoh = Value(isHoh),
        firstName = Value(firstName),
        fatherName = Value(fatherName),
        lastName = Value(lastName),
        dateOfBirth = Value(dateOfBirth),
        maritalStatusId = Value(maritalStatusId),
        relationId = Value(relationId),
        familyId = Value(familyId);
  static Insertable<MembersData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isRespondent,
    Expression<bool>? isHoh,
    Expression<String>? firstName,
    Expression<String>? fatherName,
    Expression<String>? lastName,
    Expression<DateTime>? dateOfBirth,
    Expression<String>? nationalityId,
    Expression<String>? documentTypeId,
    Expression<String>? documentNum,
    Expression<String>? phone1,
    Expression<String>? phone2,
    Expression<String>? maritalStatusId,
    Expression<String>? relationId,
    Expression<String>? familyId,
    Expression<String>? genderId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isRespondent != null) 'is_respondent': isRespondent,
      if (isHoh != null) 'is_hoh': isHoh,
      if (firstName != null) 'first_name': firstName,
      if (fatherName != null) 'father_name': fatherName,
      if (lastName != null) 'last_name': lastName,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (nationalityId != null) 'nationality_id': nationalityId,
      if (documentTypeId != null) 'document_type_id': documentTypeId,
      if (documentNum != null) 'document_num': documentNum,
      if (phone1 != null) 'phone_number_1': phone1,
      if (phone2 != null) 'phone_number_2': phone2,
      if (maritalStatusId != null) 'marital_status_id': maritalStatusId,
      if (relationId != null) 'relation_id': relationId,
      if (familyId != null) 'family_id': familyId,
      if (genderId != null) 'gender_id': genderId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MembersCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<bool>? isRespondent,
      Value<bool>? isHoh,
      Value<String>? firstName,
      Value<String>? fatherName,
      Value<String>? lastName,
      Value<DateTime>? dateOfBirth,
      Value<String?>? nationalityId,
      Value<String?>? documentTypeId,
      Value<String?>? documentNum,
      Value<String?>? phone1,
      Value<String?>? phone2,
      Value<String>? maritalStatusId,
      Value<String>? relationId,
      Value<String>? familyId,
      Value<String?>? genderId,
      Value<int>? rowid}) {
    return MembersCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isRespondent: isRespondent ?? this.isRespondent,
      isHoh: isHoh ?? this.isHoh,
      firstName: firstName ?? this.firstName,
      fatherName: fatherName ?? this.fatherName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      nationalityId: nationalityId ?? this.nationalityId,
      documentTypeId: documentTypeId ?? this.documentTypeId,
      documentNum: documentNum ?? this.documentNum,
      phone1: phone1 ?? this.phone1,
      phone2: phone2 ?? this.phone2,
      maritalStatusId: maritalStatusId ?? this.maritalStatusId,
      relationId: relationId ?? this.relationId,
      familyId: familyId ?? this.familyId,
      genderId: genderId ?? this.genderId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isRespondent.present) {
      map['is_respondent'] = Variable<bool>(isRespondent.value);
    }
    if (isHoh.present) {
      map['is_hoh'] = Variable<bool>(isHoh.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String>(fatherName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
    }
    if (nationalityId.present) {
      map['nationality_id'] = Variable<String>(nationalityId.value);
    }
    if (documentTypeId.present) {
      map['document_type_id'] = Variable<String>(documentTypeId.value);
    }
    if (documentNum.present) {
      map['document_num'] = Variable<String>(documentNum.value);
    }
    if (phone1.present) {
      map['phone_number_1'] = Variable<String>(phone1.value);
    }
    if (phone2.present) {
      map['phone_number_2'] = Variable<String>(phone2.value);
    }
    if (maritalStatusId.present) {
      map['marital_status_id'] = Variable<String>(maritalStatusId.value);
    }
    if (relationId.present) {
      map['relation_id'] = Variable<String>(relationId.value);
    }
    if (familyId.present) {
      map['family_id'] = Variable<String>(familyId.value);
    }
    if (genderId.present) {
      map['gender_id'] = Variable<String>(genderId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MembersCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isRespondent: $isRespondent, ')
          ..write('isHoh: $isHoh, ')
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('nationalityId: $nationalityId, ')
          ..write('documentTypeId: $documentTypeId, ')
          ..write('documentNum: $documentNum, ')
          ..write('phone1: $phone1, ')
          ..write('phone2: $phone2, ')
          ..write('maritalStatusId: $maritalStatusId, ')
          ..write('relationId: $relationId, ')
          ..write('familyId: $familyId, ')
          ..write('genderId: $genderId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FamilyAnswerTable extends FamilyAnswer
    with TableInfo<$FamilyAnswerTable, FamilyAnswersData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyAnswerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _questionIdMeta =
      const VerificationMeta('questionId');
  @override
  late final GeneratedColumn<String> questionId = GeneratedColumn<String>(
      'question_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueIntMeta =
      const VerificationMeta('valueInt');
  @override
  late final GeneratedColumn<int> valueInt = GeneratedColumn<int>(
      'value_int', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _valueFloatMeta =
      const VerificationMeta('valueFloat');
  @override
  late final GeneratedColumn<double> valueFloat = GeneratedColumn<double>(
      'value_float', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _valueBoolMeta =
      const VerificationMeta('valueBool');
  @override
  late final GeneratedColumn<bool> valueBool = GeneratedColumn<bool>(
      'value_bool', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("value_bool" IN (0, 1))'));
  static const VerificationMeta _valueDateMeta =
      const VerificationMeta('valueDate');
  @override
  late final GeneratedColumn<DateTime> valueDate = GeneratedColumn<DateTime>(
      'value_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _valueTimeMeta =
      const VerificationMeta('valueTime');
  @override
  late final GeneratedColumn<String> valueTime = GeneratedColumn<String>(
      'value_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueDatetimeMeta =
      const VerificationMeta('valueDatetime');
  @override
  late final GeneratedColumn<DateTime> valueDatetime =
      GeneratedColumn<DateTime>('value_datetime', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _valueTextMeta =
      const VerificationMeta('valueText');
  @override
  late final GeneratedColumn<String> valueText = GeneratedColumn<String>(
      'value_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _singleValueIdMeta =
      const VerificationMeta('singleValueId');
  @override
  late final GeneratedColumn<String> singleValueId = GeneratedColumn<String>(
      'single_value_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _familyIdMeta =
      const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String> familyId = GeneratedColumn<String>(
      'family_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _memberIdMeta =
      const VerificationMeta('memberId');
  @override
  late final GeneratedColumn<String> memberId = GeneratedColumn<String>(
      'member_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        questionId,
        valueInt,
        valueFloat,
        valueBool,
        valueDate,
        valueTime,
        valueDatetime,
        valueText,
        singleValueId,
        familyId,
        memberId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_answer';
  @override
  VerificationContext validateIntegrity(Insertable<FamilyAnswersData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('question_id')) {
      context.handle(
          _questionIdMeta,
          questionId.isAcceptableOrUnknown(
              data['question_id']!, _questionIdMeta));
    } else if (isInserting) {
      context.missing(_questionIdMeta);
    }
    if (data.containsKey('value_int')) {
      context.handle(_valueIntMeta,
          valueInt.isAcceptableOrUnknown(data['value_int']!, _valueIntMeta));
    }
    if (data.containsKey('value_float')) {
      context.handle(
          _valueFloatMeta,
          valueFloat.isAcceptableOrUnknown(
              data['value_float']!, _valueFloatMeta));
    }
    if (data.containsKey('value_bool')) {
      context.handle(_valueBoolMeta,
          valueBool.isAcceptableOrUnknown(data['value_bool']!, _valueBoolMeta));
    }
    if (data.containsKey('value_date')) {
      context.handle(_valueDateMeta,
          valueDate.isAcceptableOrUnknown(data['value_date']!, _valueDateMeta));
    }
    if (data.containsKey('value_time')) {
      context.handle(_valueTimeMeta,
          valueTime.isAcceptableOrUnknown(data['value_time']!, _valueTimeMeta));
    }
    if (data.containsKey('value_datetime')) {
      context.handle(
          _valueDatetimeMeta,
          valueDatetime.isAcceptableOrUnknown(
              data['value_datetime']!, _valueDatetimeMeta));
    }
    if (data.containsKey('value_text')) {
      context.handle(_valueTextMeta,
          valueText.isAcceptableOrUnknown(data['value_text']!, _valueTextMeta));
    }
    if (data.containsKey('single_value_id')) {
      context.handle(
          _singleValueIdMeta,
          singleValueId.isAcceptableOrUnknown(
              data['single_value_id']!, _singleValueIdMeta));
    }
    if (data.containsKey('family_id')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['family_id']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('member_id')) {
      context.handle(_memberIdMeta,
          memberId.isAcceptableOrUnknown(data['member_id']!, _memberIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilyAnswersData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyAnswersData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      questionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_id'])!,
      valueInt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}value_int']),
      valueFloat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value_float']),
      valueBool: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}value_bool']),
      valueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}value_date']),
      valueTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value_time']),
      valueDatetime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}value_datetime']),
      valueText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value_text']),
      singleValueId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}single_value_id']),
      familyId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}family_id'])!,
      memberId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}member_id']),
    );
  }

  @override
  $FamilyAnswerTable createAlias(String alias) {
    return $FamilyAnswerTable(attachedDatabase, alias);
  }
}

class FamilyAnswersData extends DataClass
    implements Insertable<FamilyAnswersData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String questionId;
  final int? valueInt;
  final double? valueFloat;
  final bool? valueBool;
  final DateTime? valueDate;
  final String? valueTime;
  final DateTime? valueDatetime;
  final String? valueText;
  final String? singleValueId;
  final String familyId;
  final String? memberId;
  const FamilyAnswersData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.questionId,
      this.valueInt,
      this.valueFloat,
      this.valueBool,
      this.valueDate,
      this.valueTime,
      this.valueDatetime,
      this.valueText,
      this.singleValueId,
      required this.familyId,
      this.memberId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['question_id'] = Variable<String>(questionId);
    if (!nullToAbsent || valueInt != null) {
      map['value_int'] = Variable<int>(valueInt);
    }
    if (!nullToAbsent || valueFloat != null) {
      map['value_float'] = Variable<double>(valueFloat);
    }
    if (!nullToAbsent || valueBool != null) {
      map['value_bool'] = Variable<bool>(valueBool);
    }
    if (!nullToAbsent || valueDate != null) {
      map['value_date'] = Variable<DateTime>(valueDate);
    }
    if (!nullToAbsent || valueTime != null) {
      map['value_time'] = Variable<String>(valueTime);
    }
    if (!nullToAbsent || valueDatetime != null) {
      map['value_datetime'] = Variable<DateTime>(valueDatetime);
    }
    if (!nullToAbsent || valueText != null) {
      map['value_text'] = Variable<String>(valueText);
    }
    if (!nullToAbsent || singleValueId != null) {
      map['single_value_id'] = Variable<String>(singleValueId);
    }
    map['family_id'] = Variable<String>(familyId);
    if (!nullToAbsent || memberId != null) {
      map['member_id'] = Variable<String>(memberId);
    }
    return map;
  }

  FamilyAnswerCompanion toCompanion(bool nullToAbsent) {
    return FamilyAnswerCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      questionId: Value(questionId),
      valueInt: valueInt == null && nullToAbsent
          ? const Value.absent()
          : Value(valueInt),
      valueFloat: valueFloat == null && nullToAbsent
          ? const Value.absent()
          : Value(valueFloat),
      valueBool: valueBool == null && nullToAbsent
          ? const Value.absent()
          : Value(valueBool),
      valueDate: valueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(valueDate),
      valueTime: valueTime == null && nullToAbsent
          ? const Value.absent()
          : Value(valueTime),
      valueDatetime: valueDatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(valueDatetime),
      valueText: valueText == null && nullToAbsent
          ? const Value.absent()
          : Value(valueText),
      singleValueId: singleValueId == null && nullToAbsent
          ? const Value.absent()
          : Value(singleValueId),
      familyId: Value(familyId),
      memberId: memberId == null && nullToAbsent
          ? const Value.absent()
          : Value(memberId),
    );
  }

  factory FamilyAnswersData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilyAnswersData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      questionId: serializer.fromJson<String>(json['questionId']),
      valueInt: serializer.fromJson<int?>(json['valueInt']),
      valueFloat: serializer.fromJson<double?>(json['valueFloat']),
      valueBool: serializer.fromJson<bool?>(json['valueBool']),
      valueDate: serializer.fromJson<DateTime?>(json['valueDate']),
      valueTime: serializer.fromJson<String?>(json['valueTime']),
      valueDatetime: serializer.fromJson<DateTime?>(json['valueDatetime']),
      valueText: serializer.fromJson<String?>(json['valueText']),
      singleValueId: serializer.fromJson<String?>(json['singleValueId']),
      familyId: serializer.fromJson<String>(json['familyId']),
      memberId: serializer.fromJson<String?>(json['memberId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'questionId': serializer.toJson<String>(questionId),
      'valueInt': serializer.toJson<int?>(valueInt),
      'valueFloat': serializer.toJson<double?>(valueFloat),
      'valueBool': serializer.toJson<bool?>(valueBool),
      'valueDate': serializer.toJson<DateTime?>(valueDate),
      'valueTime': serializer.toJson<String?>(valueTime),
      'valueDatetime': serializer.toJson<DateTime?>(valueDatetime),
      'valueText': serializer.toJson<String?>(valueText),
      'singleValueId': serializer.toJson<String?>(singleValueId),
      'familyId': serializer.toJson<String>(familyId),
      'memberId': serializer.toJson<String?>(memberId),
    };
  }

  FamilyAnswersData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? questionId,
          Value<int?> valueInt = const Value.absent(),
          Value<double?> valueFloat = const Value.absent(),
          Value<bool?> valueBool = const Value.absent(),
          Value<DateTime?> valueDate = const Value.absent(),
          Value<String?> valueTime = const Value.absent(),
          Value<DateTime?> valueDatetime = const Value.absent(),
          Value<String?> valueText = const Value.absent(),
          Value<String?> singleValueId = const Value.absent(),
          String? familyId,
          Value<String?> memberId = const Value.absent()}) =>
      FamilyAnswersData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        questionId: questionId ?? this.questionId,
        valueInt: valueInt.present ? valueInt.value : this.valueInt,
        valueFloat: valueFloat.present ? valueFloat.value : this.valueFloat,
        valueBool: valueBool.present ? valueBool.value : this.valueBool,
        valueDate: valueDate.present ? valueDate.value : this.valueDate,
        valueTime: valueTime.present ? valueTime.value : this.valueTime,
        valueDatetime:
            valueDatetime.present ? valueDatetime.value : this.valueDatetime,
        valueText: valueText.present ? valueText.value : this.valueText,
        singleValueId:
            singleValueId.present ? singleValueId.value : this.singleValueId,
        familyId: familyId ?? this.familyId,
        memberId: memberId.present ? memberId.value : this.memberId,
      );
  FamilyAnswersData copyWithCompanion(FamilyAnswerCompanion data) {
    return FamilyAnswersData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      questionId:
          data.questionId.present ? data.questionId.value : this.questionId,
      valueInt: data.valueInt.present ? data.valueInt.value : this.valueInt,
      valueFloat:
          data.valueFloat.present ? data.valueFloat.value : this.valueFloat,
      valueBool: data.valueBool.present ? data.valueBool.value : this.valueBool,
      valueDate: data.valueDate.present ? data.valueDate.value : this.valueDate,
      valueTime: data.valueTime.present ? data.valueTime.value : this.valueTime,
      valueDatetime: data.valueDatetime.present
          ? data.valueDatetime.value
          : this.valueDatetime,
      valueText: data.valueText.present ? data.valueText.value : this.valueText,
      singleValueId: data.singleValueId.present
          ? data.singleValueId.value
          : this.singleValueId,
      familyId: data.familyId.present ? data.familyId.value : this.familyId,
      memberId: data.memberId.present ? data.memberId.value : this.memberId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FamilyAnswersData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('questionId: $questionId, ')
          ..write('valueInt: $valueInt, ')
          ..write('valueFloat: $valueFloat, ')
          ..write('valueBool: $valueBool, ')
          ..write('valueDate: $valueDate, ')
          ..write('valueTime: $valueTime, ')
          ..write('valueDatetime: $valueDatetime, ')
          ..write('valueText: $valueText, ')
          ..write('singleValueId: $singleValueId, ')
          ..write('familyId: $familyId, ')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      questionId,
      valueInt,
      valueFloat,
      valueBool,
      valueDate,
      valueTime,
      valueDatetime,
      valueText,
      singleValueId,
      familyId,
      memberId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilyAnswersData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.questionId == this.questionId &&
          other.valueInt == this.valueInt &&
          other.valueFloat == this.valueFloat &&
          other.valueBool == this.valueBool &&
          other.valueDate == this.valueDate &&
          other.valueTime == this.valueTime &&
          other.valueDatetime == this.valueDatetime &&
          other.valueText == this.valueText &&
          other.singleValueId == this.singleValueId &&
          other.familyId == this.familyId &&
          other.memberId == this.memberId);
}

class FamilyAnswerCompanion extends UpdateCompanion<FamilyAnswersData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> questionId;
  final Value<int?> valueInt;
  final Value<double?> valueFloat;
  final Value<bool?> valueBool;
  final Value<DateTime?> valueDate;
  final Value<String?> valueTime;
  final Value<DateTime?> valueDatetime;
  final Value<String?> valueText;
  final Value<String?> singleValueId;
  final Value<String> familyId;
  final Value<String?> memberId;
  final Value<int> rowid;
  const FamilyAnswerCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.questionId = const Value.absent(),
    this.valueInt = const Value.absent(),
    this.valueFloat = const Value.absent(),
    this.valueBool = const Value.absent(),
    this.valueDate = const Value.absent(),
    this.valueTime = const Value.absent(),
    this.valueDatetime = const Value.absent(),
    this.valueText = const Value.absent(),
    this.singleValueId = const Value.absent(),
    this.familyId = const Value.absent(),
    this.memberId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FamilyAnswerCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String questionId,
    this.valueInt = const Value.absent(),
    this.valueFloat = const Value.absent(),
    this.valueBool = const Value.absent(),
    this.valueDate = const Value.absent(),
    this.valueTime = const Value.absent(),
    this.valueDatetime = const Value.absent(),
    this.valueText = const Value.absent(),
    this.singleValueId = const Value.absent(),
    required String familyId,
    this.memberId = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        questionId = Value(questionId),
        familyId = Value(familyId);
  static Insertable<FamilyAnswersData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? questionId,
    Expression<int>? valueInt,
    Expression<double>? valueFloat,
    Expression<bool>? valueBool,
    Expression<DateTime>? valueDate,
    Expression<String>? valueTime,
    Expression<DateTime>? valueDatetime,
    Expression<String>? valueText,
    Expression<String>? singleValueId,
    Expression<String>? familyId,
    Expression<String>? memberId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (questionId != null) 'question_id': questionId,
      if (valueInt != null) 'value_int': valueInt,
      if (valueFloat != null) 'value_float': valueFloat,
      if (valueBool != null) 'value_bool': valueBool,
      if (valueDate != null) 'value_date': valueDate,
      if (valueTime != null) 'value_time': valueTime,
      if (valueDatetime != null) 'value_datetime': valueDatetime,
      if (valueText != null) 'value_text': valueText,
      if (singleValueId != null) 'single_value_id': singleValueId,
      if (familyId != null) 'family_id': familyId,
      if (memberId != null) 'member_id': memberId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FamilyAnswerCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? questionId,
      Value<int?>? valueInt,
      Value<double?>? valueFloat,
      Value<bool?>? valueBool,
      Value<DateTime?>? valueDate,
      Value<String?>? valueTime,
      Value<DateTime?>? valueDatetime,
      Value<String?>? valueText,
      Value<String?>? singleValueId,
      Value<String>? familyId,
      Value<String?>? memberId,
      Value<int>? rowid}) {
    return FamilyAnswerCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      questionId: questionId ?? this.questionId,
      valueInt: valueInt ?? this.valueInt,
      valueFloat: valueFloat ?? this.valueFloat,
      valueBool: valueBool ?? this.valueBool,
      valueDate: valueDate ?? this.valueDate,
      valueTime: valueTime ?? this.valueTime,
      valueDatetime: valueDatetime ?? this.valueDatetime,
      valueText: valueText ?? this.valueText,
      singleValueId: singleValueId ?? this.singleValueId,
      familyId: familyId ?? this.familyId,
      memberId: memberId ?? this.memberId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (questionId.present) {
      map['question_id'] = Variable<String>(questionId.value);
    }
    if (valueInt.present) {
      map['value_int'] = Variable<int>(valueInt.value);
    }
    if (valueFloat.present) {
      map['value_float'] = Variable<double>(valueFloat.value);
    }
    if (valueBool.present) {
      map['value_bool'] = Variable<bool>(valueBool.value);
    }
    if (valueDate.present) {
      map['value_date'] = Variable<DateTime>(valueDate.value);
    }
    if (valueTime.present) {
      map['value_time'] = Variable<String>(valueTime.value);
    }
    if (valueDatetime.present) {
      map['value_datetime'] = Variable<DateTime>(valueDatetime.value);
    }
    if (valueText.present) {
      map['value_text'] = Variable<String>(valueText.value);
    }
    if (singleValueId.present) {
      map['single_value_id'] = Variable<String>(singleValueId.value);
    }
    if (familyId.present) {
      map['family_id'] = Variable<String>(familyId.value);
    }
    if (memberId.present) {
      map['member_id'] = Variable<String>(memberId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyAnswerCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('questionId: $questionId, ')
          ..write('valueInt: $valueInt, ')
          ..write('valueFloat: $valueFloat, ')
          ..write('valueBool: $valueBool, ')
          ..write('valueDate: $valueDate, ')
          ..write('valueTime: $valueTime, ')
          ..write('valueDatetime: $valueDatetime, ')
          ..write('valueText: $valueText, ')
          ..write('singleValueId: $singleValueId, ')
          ..write('familyId: $familyId, ')
          ..write('memberId: $memberId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MultipleAnswerQuestionTable extends MultipleAnswerQuestion
    with TableInfo<$MultipleAnswerQuestionTable, MultiAnswerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MultipleAnswerQuestionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _familyAnswerIdMeta =
      const VerificationMeta('familyAnswerId');
  @override
  late final GeneratedColumn<String> familyAnswerId = GeneratedColumn<String>(
      'family_answer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerItemIdMeta =
      const VerificationMeta('answerItemId');
  @override
  late final GeneratedColumn<String> answerItemId = GeneratedColumn<String>(
      'answer_item_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, familyAnswerId, answerItemId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'multiple_answer_question';
  @override
  VerificationContext validateIntegrity(Insertable<MultiAnswerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('family_answer_id')) {
      context.handle(
          _familyAnswerIdMeta,
          familyAnswerId.isAcceptableOrUnknown(
              data['family_answer_id']!, _familyAnswerIdMeta));
    } else if (isInserting) {
      context.missing(_familyAnswerIdMeta);
    }
    if (data.containsKey('answer_item_id')) {
      context.handle(
          _answerItemIdMeta,
          answerItemId.isAcceptableOrUnknown(
              data['answer_item_id']!, _answerItemIdMeta));
    } else if (isInserting) {
      context.missing(_answerItemIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {familyAnswerId, answerItemId},
      ];
  @override
  MultiAnswerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MultiAnswerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      familyAnswerId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}family_answer_id'])!,
      answerItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer_item_id'])!,
    );
  }

  @override
  $MultipleAnswerQuestionTable createAlias(String alias) {
    return $MultipleAnswerQuestionTable(attachedDatabase, alias);
  }
}

class MultiAnswerData extends DataClass implements Insertable<MultiAnswerData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String familyAnswerId;
  final String answerItemId;
  const MultiAnswerData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.familyAnswerId,
      required this.answerItemId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['family_answer_id'] = Variable<String>(familyAnswerId);
    map['answer_item_id'] = Variable<String>(answerItemId);
    return map;
  }

  MultipleAnswerQuestionCompanion toCompanion(bool nullToAbsent) {
    return MultipleAnswerQuestionCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      familyAnswerId: Value(familyAnswerId),
      answerItemId: Value(answerItemId),
    );
  }

  factory MultiAnswerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MultiAnswerData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      familyAnswerId: serializer.fromJson<String>(json['familyAnswerId']),
      answerItemId: serializer.fromJson<String>(json['answerItemId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'familyAnswerId': serializer.toJson<String>(familyAnswerId),
      'answerItemId': serializer.toJson<String>(answerItemId),
    };
  }

  MultiAnswerData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? familyAnswerId,
          String? answerItemId}) =>
      MultiAnswerData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        familyAnswerId: familyAnswerId ?? this.familyAnswerId,
        answerItemId: answerItemId ?? this.answerItemId,
      );
  MultiAnswerData copyWithCompanion(MultipleAnswerQuestionCompanion data) {
    return MultiAnswerData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      familyAnswerId: data.familyAnswerId.present
          ? data.familyAnswerId.value
          : this.familyAnswerId,
      answerItemId: data.answerItemId.present
          ? data.answerItemId.value
          : this.answerItemId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MultiAnswerData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('familyAnswerId: $familyAnswerId, ')
          ..write('answerItemId: $answerItemId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, familyAnswerId, answerItemId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MultiAnswerData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.familyAnswerId == this.familyAnswerId &&
          other.answerItemId == this.answerItemId);
}

class MultipleAnswerQuestionCompanion extends UpdateCompanion<MultiAnswerData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> familyAnswerId;
  final Value<String> answerItemId;
  final Value<int> rowid;
  const MultipleAnswerQuestionCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.familyAnswerId = const Value.absent(),
    this.answerItemId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MultipleAnswerQuestionCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String familyAnswerId,
    required String answerItemId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        familyAnswerId = Value(familyAnswerId),
        answerItemId = Value(answerItemId);
  static Insertable<MultiAnswerData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? familyAnswerId,
    Expression<String>? answerItemId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (familyAnswerId != null) 'family_answer_id': familyAnswerId,
      if (answerItemId != null) 'answer_item_id': answerItemId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MultipleAnswerQuestionCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? familyAnswerId,
      Value<String>? answerItemId,
      Value<int>? rowid}) {
    return MultipleAnswerQuestionCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      familyAnswerId: familyAnswerId ?? this.familyAnswerId,
      answerItemId: answerItemId ?? this.answerItemId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (familyAnswerId.present) {
      map['family_answer_id'] = Variable<String>(familyAnswerId.value);
    }
    if (answerItemId.present) {
      map['answer_item_id'] = Variable<String>(answerItemId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MultipleAnswerQuestionCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('familyAnswerId: $familyAnswerId, ')
          ..write('answerItemId: $answerItemId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RelationsTable extends Relations
    with TableInfo<$RelationsTable, RelationsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RelationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'relation';
  @override
  VerificationContext validateIntegrity(Insertable<RelationsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RelationsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RelationsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $RelationsTable createAlias(String alias) {
    return $RelationsTable(attachedDatabase, alias);
  }
}

class RelationsData extends DataClass implements Insertable<RelationsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const RelationsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  RelationsCompanion toCompanion(bool nullToAbsent) {
    return RelationsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory RelationsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RelationsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  RelationsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      RelationsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  RelationsData copyWithCompanion(RelationsCompanion data) {
    return RelationsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RelationsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RelationsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class RelationsCompanion extends UpdateCompanion<RelationsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const RelationsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RelationsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<RelationsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RelationsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return RelationsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RelationsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GendersTable extends Genders with TableInfo<$GendersTable, GendersData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GendersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, code, titleAr, titleEng, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gender';
  @override
  VerificationContext validateIntegrity(Insertable<GendersData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GendersData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GendersData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $GendersTable createAlias(String alias) {
    return $GendersTable(attachedDatabase, alias);
  }
}

class GendersData extends DataClass implements Insertable<GendersData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const GendersData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  GendersCompanion toCompanion(bool nullToAbsent) {
    return GendersCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory GendersData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GendersData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  GendersData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      GendersData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  GendersData copyWithCompanion(GendersCompanion data) {
    return GendersData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GendersData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GendersData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class GendersCompanion extends UpdateCompanion<GendersData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const GendersCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GendersCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<GendersData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GendersCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return GendersCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GendersCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MaritalStatusTable extends MaritalStatus
    with TableInfo<$MaritalStatusTable, MaritalStatusesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaritalStatusTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, code, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'marital_status';
  @override
  VerificationContext validateIntegrity(
      Insertable<MaritalStatusesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaritalStatusesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaritalStatusesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $MaritalStatusTable createAlias(String alias) {
    return $MaritalStatusTable(attachedDatabase, alias);
  }
}

class MaritalStatusesData extends DataClass
    implements Insertable<MaritalStatusesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final String code;
  final bool isActive;
  const MaritalStatusesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.code,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['code'] = Variable<String>(code);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  MaritalStatusCompanion toCompanion(bool nullToAbsent) {
    return MaritalStatusCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      code: Value(code),
      isActive: Value(isActive),
    );
  }

  factory MaritalStatusesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaritalStatusesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      code: serializer.fromJson<String>(json['code']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'code': serializer.toJson<String>(code),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  MaritalStatusesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          String? code,
          bool? isActive}) =>
      MaritalStatusesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        code: code ?? this.code,
        isActive: isActive ?? this.isActive,
      );
  MaritalStatusesData copyWithCompanion(MaritalStatusCompanion data) {
    return MaritalStatusesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      code: data.code.present ? data.code.value : this.code,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaritalStatusesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('code: $code, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, code, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaritalStatusesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.code == this.code &&
          other.isActive == this.isActive);
}

class MaritalStatusCompanion extends UpdateCompanion<MaritalStatusesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<String> code;
  final Value<bool> isActive;
  final Value<int> rowid;
  const MaritalStatusCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.code = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MaritalStatusCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    required String code,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<MaritalStatusesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<String>? code,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (code != null) 'code': code,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MaritalStatusCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<String>? code,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return MaritalStatusCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      code: code ?? this.code,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaritalStatusCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('code: $code, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JobsTable extends Jobs with TableInfo<$JobsTable, JobsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JobsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'job';
  @override
  VerificationContext validateIntegrity(Insertable<JobsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JobsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JobsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $JobsTable createAlias(String alias) {
    return $JobsTable(attachedDatabase, alias);
  }
}

class JobsData extends DataClass implements Insertable<JobsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const JobsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  JobsCompanion toCompanion(bool nullToAbsent) {
    return JobsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory JobsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JobsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  JobsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      JobsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  JobsData copyWithCompanion(JobsCompanion data) {
    return JobsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JobsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JobsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class JobsCompanion extends UpdateCompanion<JobsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const JobsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JobsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<JobsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JobsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return JobsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JobsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NationalitiesTable extends Nationalities
    with TableInfo<$NationalitiesTable, NationalitiesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NationalitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nationalities';
  @override
  VerificationContext validateIntegrity(Insertable<NationalitiesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NationalitiesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NationalitiesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $NationalitiesTable createAlias(String alias) {
    return $NationalitiesTable(attachedDatabase, alias);
  }
}

class NationalitiesData extends DataClass
    implements Insertable<NationalitiesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const NationalitiesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  NationalitiesCompanion toCompanion(bool nullToAbsent) {
    return NationalitiesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory NationalitiesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NationalitiesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  NationalitiesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      NationalitiesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  NationalitiesData copyWithCompanion(NationalitiesCompanion data) {
    return NationalitiesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NationalitiesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NationalitiesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class NationalitiesCompanion extends UpdateCompanion<NationalitiesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const NationalitiesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NationalitiesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<NationalitiesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NationalitiesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return NationalitiesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NationalitiesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EducationLevelsTable extends EducationLevels
    with TableInfo<$EducationLevelsTable, EducationLevelsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EducationLevelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'education_level';
  @override
  VerificationContext validateIntegrity(
      Insertable<EducationLevelsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EducationLevelsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EducationLevelsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $EducationLevelsTable createAlias(String alias) {
    return $EducationLevelsTable(attachedDatabase, alias);
  }
}

class EducationLevelsData extends DataClass
    implements Insertable<EducationLevelsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const EducationLevelsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  EducationLevelsCompanion toCompanion(bool nullToAbsent) {
    return EducationLevelsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory EducationLevelsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EducationLevelsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  EducationLevelsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      EducationLevelsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  EducationLevelsData copyWithCompanion(EducationLevelsCompanion data) {
    return EducationLevelsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EducationLevelsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EducationLevelsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class EducationLevelsCompanion extends UpdateCompanion<EducationLevelsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const EducationLevelsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EducationLevelsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<EducationLevelsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EducationLevelsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return EducationLevelsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EducationLevelsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EducationStatusesTable extends EducationStatuses
    with TableInfo<$EducationStatusesTable, EducationStatusesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EducationStatusesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'education_status';
  @override
  VerificationContext validateIntegrity(
      Insertable<EducationStatusesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EducationStatusesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EducationStatusesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $EducationStatusesTable createAlias(String alias) {
    return $EducationStatusesTable(attachedDatabase, alias);
  }
}

class EducationStatusesData extends DataClass
    implements Insertable<EducationStatusesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const EducationStatusesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  EducationStatusesCompanion toCompanion(bool nullToAbsent) {
    return EducationStatusesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory EducationStatusesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EducationStatusesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  EducationStatusesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      EducationStatusesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  EducationStatusesData copyWithCompanion(EducationStatusesCompanion data) {
    return EducationStatusesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EducationStatusesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EducationStatusesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class EducationStatusesCompanion
    extends UpdateCompanion<EducationStatusesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const EducationStatusesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EducationStatusesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<EducationStatusesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EducationStatusesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return EducationStatusesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EducationStatusesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DocumentTypesTable extends DocumentTypes
    with TableInfo<$DocumentTypesTable, DocumentTypesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _hasCriteriaMeta =
      const VerificationMeta('hasCriteria');
  @override
  late final GeneratedColumn<bool> hasCriteria = GeneratedColumn<bool>(
      'has_criteria', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_criteria" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _criteriaMeta =
      const VerificationMeta('criteria');
  @override
  late final GeneratedColumn<String> criteria = GeneratedColumn<String>(
      'criteria', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _forWhoIdMeta =
      const VerificationMeta('forWhoId');
  @override
  late final GeneratedColumn<String> forWhoId = GeneratedColumn<String>(
      'for_who_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        titleAr,
        titleEng,
        isActive,
        hasCriteria,
        criteria,
        code,
        forWhoId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'document_type';
  @override
  VerificationContext validateIntegrity(Insertable<DocumentTypesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('has_criteria')) {
      context.handle(
          _hasCriteriaMeta,
          hasCriteria.isAcceptableOrUnknown(
              data['has_criteria']!, _hasCriteriaMeta));
    }
    if (data.containsKey('criteria')) {
      context.handle(_criteriaMeta,
          criteria.isAcceptableOrUnknown(data['criteria']!, _criteriaMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('for_who_id')) {
      context.handle(_forWhoIdMeta,
          forWhoId.isAcceptableOrUnknown(data['for_who_id']!, _forWhoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DocumentTypesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocumentTypesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      hasCriteria: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_criteria'])!,
      criteria: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}criteria']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      forWhoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}for_who_id']),
    );
  }

  @override
  $DocumentTypesTable createAlias(String alias) {
    return $DocumentTypesTable(attachedDatabase, alias);
  }
}

class DocumentTypesData extends DataClass
    implements Insertable<DocumentTypesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final bool hasCriteria;
  final String? criteria;
  final String code;
  final String? forWhoId;
  const DocumentTypesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.hasCriteria,
      this.criteria,
      required this.code,
      this.forWhoId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['has_criteria'] = Variable<bool>(hasCriteria);
    if (!nullToAbsent || criteria != null) {
      map['criteria'] = Variable<String>(criteria);
    }
    map['code'] = Variable<String>(code);
    if (!nullToAbsent || forWhoId != null) {
      map['for_who_id'] = Variable<String>(forWhoId);
    }
    return map;
  }

  DocumentTypesCompanion toCompanion(bool nullToAbsent) {
    return DocumentTypesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      hasCriteria: Value(hasCriteria),
      criteria: criteria == null && nullToAbsent
          ? const Value.absent()
          : Value(criteria),
      code: Value(code),
      forWhoId: forWhoId == null && nullToAbsent
          ? const Value.absent()
          : Value(forWhoId),
    );
  }

  factory DocumentTypesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocumentTypesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      hasCriteria: serializer.fromJson<bool>(json['hasCriteria']),
      criteria: serializer.fromJson<String?>(json['criteria']),
      code: serializer.fromJson<String>(json['code']),
      forWhoId: serializer.fromJson<String?>(json['forWhoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'hasCriteria': serializer.toJson<bool>(hasCriteria),
      'criteria': serializer.toJson<String?>(criteria),
      'code': serializer.toJson<String>(code),
      'forWhoId': serializer.toJson<String?>(forWhoId),
    };
  }

  DocumentTypesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          bool? hasCriteria,
          Value<String?> criteria = const Value.absent(),
          String? code,
          Value<String?> forWhoId = const Value.absent()}) =>
      DocumentTypesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        hasCriteria: hasCriteria ?? this.hasCriteria,
        criteria: criteria.present ? criteria.value : this.criteria,
        code: code ?? this.code,
        forWhoId: forWhoId.present ? forWhoId.value : this.forWhoId,
      );
  DocumentTypesData copyWithCompanion(DocumentTypesCompanion data) {
    return DocumentTypesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      hasCriteria:
          data.hasCriteria.present ? data.hasCriteria.value : this.hasCriteria,
      criteria: data.criteria.present ? data.criteria.value : this.criteria,
      code: data.code.present ? data.code.value : this.code,
      forWhoId: data.forWhoId.present ? data.forWhoId.value : this.forWhoId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTypesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('hasCriteria: $hasCriteria, ')
          ..write('criteria: $criteria, ')
          ..write('code: $code, ')
          ..write('forWhoId: $forWhoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, createdAt, updatedAt, titleAr, titleEng,
      isActive, hasCriteria, criteria, code, forWhoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentTypesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.hasCriteria == this.hasCriteria &&
          other.criteria == this.criteria &&
          other.code == this.code &&
          other.forWhoId == this.forWhoId);
}

class DocumentTypesCompanion extends UpdateCompanion<DocumentTypesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<bool> hasCriteria;
  final Value<String?> criteria;
  final Value<String> code;
  final Value<String?> forWhoId;
  final Value<int> rowid;
  const DocumentTypesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.hasCriteria = const Value.absent(),
    this.criteria = const Value.absent(),
    this.code = const Value.absent(),
    this.forWhoId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocumentTypesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.hasCriteria = const Value.absent(),
    this.criteria = const Value.absent(),
    required String code,
    this.forWhoId = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<DocumentTypesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<bool>? hasCriteria,
    Expression<String>? criteria,
    Expression<String>? code,
    Expression<String>? forWhoId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (hasCriteria != null) 'has_criteria': hasCriteria,
      if (criteria != null) 'criteria': criteria,
      if (code != null) 'code': code,
      if (forWhoId != null) 'for_who_id': forWhoId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocumentTypesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<bool>? hasCriteria,
      Value<String?>? criteria,
      Value<String>? code,
      Value<String?>? forWhoId,
      Value<int>? rowid}) {
    return DocumentTypesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      hasCriteria: hasCriteria ?? this.hasCriteria,
      criteria: criteria ?? this.criteria,
      code: code ?? this.code,
      forWhoId: forWhoId ?? this.forWhoId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (hasCriteria.present) {
      map['has_criteria'] = Variable<bool>(hasCriteria.value);
    }
    if (criteria.present) {
      map['criteria'] = Variable<String>(criteria.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (forWhoId.present) {
      map['for_who_id'] = Variable<String>(forWhoId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTypesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('hasCriteria: $hasCriteria, ')
          ..write('criteria: $criteria, ')
          ..write('code: $code, ')
          ..write('forWhoId: $forWhoId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RequiredServicesTable extends RequiredServices
    with TableInfo<$RequiredServicesTable, RequiredServicesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RequiredServicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'required_service';
  @override
  VerificationContext validateIntegrity(
      Insertable<RequiredServicesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RequiredServicesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RequiredServicesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $RequiredServicesTable createAlias(String alias) {
    return $RequiredServicesTable(attachedDatabase, alias);
  }
}

class RequiredServicesData extends DataClass
    implements Insertable<RequiredServicesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const RequiredServicesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  RequiredServicesCompanion toCompanion(bool nullToAbsent) {
    return RequiredServicesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory RequiredServicesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RequiredServicesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  RequiredServicesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      RequiredServicesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  RequiredServicesData copyWithCompanion(RequiredServicesCompanion data) {
    return RequiredServicesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RequiredServicesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RequiredServicesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class RequiredServicesCompanion extends UpdateCompanion<RequiredServicesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const RequiredServicesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RequiredServicesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<RequiredServicesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RequiredServicesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return RequiredServicesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RequiredServicesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ServiceStatusesTable extends ServiceStatuses
    with TableInfo<$ServiceStatusesTable, ServiceStatusesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceStatusesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'service_status';
  @override
  VerificationContext validateIntegrity(
      Insertable<ServiceStatusesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServiceStatusesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ServiceStatusesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $ServiceStatusesTable createAlias(String alias) {
    return $ServiceStatusesTable(attachedDatabase, alias);
  }
}

class ServiceStatusesData extends DataClass
    implements Insertable<ServiceStatusesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const ServiceStatusesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  ServiceStatusesCompanion toCompanion(bool nullToAbsent) {
    return ServiceStatusesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory ServiceStatusesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceStatusesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  ServiceStatusesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      ServiceStatusesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  ServiceStatusesData copyWithCompanion(ServiceStatusesCompanion data) {
    return ServiceStatusesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ServiceStatusesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceStatusesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class ServiceStatusesCompanion extends UpdateCompanion<ServiceStatusesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const ServiceStatusesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ServiceStatusesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<ServiceStatusesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ServiceStatusesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return ServiceStatusesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceStatusesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CenterTypesTable extends CenterTypes
    with TableInfo<$CenterTypesTable, CenterTypesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CenterTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'center_type';
  @override
  VerificationContext validateIntegrity(Insertable<CenterTypesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CenterTypesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CenterTypesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $CenterTypesTable createAlias(String alias) {
    return $CenterTypesTable(attachedDatabase, alias);
  }
}

class CenterTypesData extends DataClass implements Insertable<CenterTypesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const CenterTypesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  CenterTypesCompanion toCompanion(bool nullToAbsent) {
    return CenterTypesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory CenterTypesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CenterTypesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  CenterTypesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      CenterTypesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  CenterTypesData copyWithCompanion(CenterTypesCompanion data) {
    return CenterTypesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CenterTypesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CenterTypesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class CenterTypesCompanion extends UpdateCompanion<CenterTypesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const CenterTypesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CenterTypesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<CenterTypesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CenterTypesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return CenterTypesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CenterTypesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ModalitiesTable extends Modalities
    with TableInfo<$ModalitiesTable, ModalitiesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ModalitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'modality';
  @override
  VerificationContext validateIntegrity(Insertable<ModalitiesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ModalitiesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ModalitiesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $ModalitiesTable createAlias(String alias) {
    return $ModalitiesTable(attachedDatabase, alias);
  }
}

class ModalitiesData extends DataClass implements Insertable<ModalitiesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const ModalitiesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  ModalitiesCompanion toCompanion(bool nullToAbsent) {
    return ModalitiesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory ModalitiesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ModalitiesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  ModalitiesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      ModalitiesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  ModalitiesData copyWithCompanion(ModalitiesCompanion data) {
    return ModalitiesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ModalitiesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ModalitiesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class ModalitiesCompanion extends UpdateCompanion<ModalitiesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const ModalitiesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ModalitiesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<ModalitiesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ModalitiesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return ModalitiesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ModalitiesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ForWhosTable extends ForWhos with TableInfo<$ForWhosTable, ForWhosData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ForWhosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, code, titleAr, titleEng, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'for_who';
  @override
  VerificationContext validateIntegrity(Insertable<ForWhosData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ForWhosData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ForWhosData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $ForWhosTable createAlias(String alias) {
    return $ForWhosTable(attachedDatabase, alias);
  }
}

class ForWhosData extends DataClass implements Insertable<ForWhosData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const ForWhosData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  ForWhosCompanion toCompanion(bool nullToAbsent) {
    return ForWhosCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory ForWhosData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ForWhosData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  ForWhosData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      ForWhosData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  ForWhosData copyWithCompanion(ForWhosCompanion data) {
    return ForWhosData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ForWhosData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ForWhosData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class ForWhosCompanion extends UpdateCompanion<ForWhosData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const ForWhosCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ForWhosCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<ForWhosData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ForWhosCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return ForWhosCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ForWhosCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestionTypesTable extends QuestionTypes
    with TableInfo<$QuestionTypesTable, QuestionTypesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, code, titleAr, titleEng, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'question_type';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionTypesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestionTypesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestionTypesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $QuestionTypesTable createAlias(String alias) {
    return $QuestionTypesTable(attachedDatabase, alias);
  }
}

class QuestionTypesData extends DataClass
    implements Insertable<QuestionTypesData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const QuestionTypesData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  QuestionTypesCompanion toCompanion(bool nullToAbsent) {
    return QuestionTypesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory QuestionTypesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestionTypesData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  QuestionTypesData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      QuestionTypesData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  QuestionTypesData copyWithCompanion(QuestionTypesCompanion data) {
    return QuestionTypesData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestionTypesData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestionTypesData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class QuestionTypesCompanion extends UpdateCompanion<QuestionTypesData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const QuestionTypesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionTypesCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<QuestionTypesData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionTypesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return QuestionTypesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionTypesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SectionsTable extends Sections
    with TableInfo<$SectionsTable, SectionsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, code, titleAr, titleEng, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section';
  @override
  VerificationContext validateIntegrity(Insertable<SectionsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $SectionsTable createAlias(String alias) {
    return $SectionsTable(attachedDatabase, alias);
  }
}

class SectionsData extends DataClass implements Insertable<SectionsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const SectionsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  SectionsCompanion toCompanion(bool nullToAbsent) {
    return SectionsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory SectionsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  SectionsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      SectionsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  SectionsData copyWithCompanion(SectionsCompanion data) {
    return SectionsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectionsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class SectionsCompanion extends UpdateCompanion<SectionsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const SectionsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<SectionsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return SectionsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AnswerSetsTable extends AnswerSets
    with TableInfo<$AnswerSetsTable, AnswerSetsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnswerSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, code, titleAr, titleEng, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'answer_set';
  @override
  VerificationContext validateIntegrity(Insertable<AnswerSetsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnswerSetsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnswerSetsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $AnswerSetsTable createAlias(String alias) {
    return $AnswerSetsTable(attachedDatabase, alias);
  }
}

class AnswerSetsData extends DataClass implements Insertable<AnswerSetsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const AnswerSetsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  AnswerSetsCompanion toCompanion(bool nullToAbsent) {
    return AnswerSetsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory AnswerSetsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnswerSetsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  AnswerSetsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      AnswerSetsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  AnswerSetsData copyWithCompanion(AnswerSetsCompanion data) {
    return AnswerSetsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnswerSetsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnswerSetsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class AnswerSetsCompanion extends UpdateCompanion<AnswerSetsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const AnswerSetsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnswerSetsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<AnswerSetsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnswerSetsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return AnswerSetsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnswerSetsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AnswerItemsTable extends AnswerItems
    with TableInfo<$AnswerItemsTable, AnswerItemsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnswerItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _answerSetIdMeta =
      const VerificationMeta('answerSetId');
  @override
  late final GeneratedColumn<String> answerSetId = GeneratedColumn<String>(
      'answer_set_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        answerSetId,
        code,
        titleAr,
        titleEng,
        isActive
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'answer_item';
  @override
  VerificationContext validateIntegrity(Insertable<AnswerItemsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('answer_set_id')) {
      context.handle(
          _answerSetIdMeta,
          answerSetId.isAcceptableOrUnknown(
              data['answer_set_id']!, _answerSetIdMeta));
    } else if (isInserting) {
      context.missing(_answerSetIdMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnswerItemsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnswerItemsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      answerSetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer_set_id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $AnswerItemsTable createAlias(String alias) {
    return $AnswerItemsTable(attachedDatabase, alias);
  }
}

class AnswerItemsData extends DataClass implements Insertable<AnswerItemsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String answerSetId;
  final String code;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  const AnswerItemsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.answerSetId,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['answer_set_id'] = Variable<String>(answerSetId);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  AnswerItemsCompanion toCompanion(bool nullToAbsent) {
    return AnswerItemsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      answerSetId: Value(answerSetId),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
    );
  }

  factory AnswerItemsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnswerItemsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      answerSetId: serializer.fromJson<String>(json['answerSetId']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'answerSetId': serializer.toJson<String>(answerSetId),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  AnswerItemsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? answerSetId,
          String? code,
          String? titleAr,
          String? titleEng,
          bool? isActive}) =>
      AnswerItemsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        answerSetId: answerSetId ?? this.answerSetId,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
      );
  AnswerItemsData copyWithCompanion(AnswerItemsCompanion data) {
    return AnswerItemsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      answerSetId:
          data.answerSetId.present ? data.answerSetId.value : this.answerSetId,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnswerItemsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('answerSetId: $answerSetId, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, createdAt, updatedAt, answerSetId, code, titleAr, titleEng, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnswerItemsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.answerSetId == this.answerSetId &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive);
}

class AnswerItemsCompanion extends UpdateCompanion<AnswerItemsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> answerSetId;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<int> rowid;
  const AnswerItemsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.answerSetId = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnswerItemsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String answerSetId,
    required String code,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        answerSetId = Value(answerSetId),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng);
  static Insertable<AnswerItemsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? answerSetId,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (answerSetId != null) 'answer_set_id': answerSetId,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnswerItemsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? answerSetId,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return AnswerItemsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      answerSetId: answerSetId ?? this.answerSetId,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (answerSetId.present) {
      map['answer_set_id'] = Variable<String>(answerSetId.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnswerItemsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('answerSetId: $answerSetId, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, QuestionsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<String> sectionId = GeneratedColumn<String>(
      'section_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _questionTypeIdMeta =
      const VerificationMeta('questionTypeId');
  @override
  late final GeneratedColumn<String> questionTypeId = GeneratedColumn<String>(
      'question_type_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _forWhoIdMeta =
      const VerificationMeta('forWhoId');
  @override
  late final GeneratedColumn<String> forWhoId = GeneratedColumn<String>(
      'for_who_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _answerSetIdMeta =
      const VerificationMeta('answerSetId');
  @override
  late final GeneratedColumn<String> answerSetId = GeneratedColumn<String>(
      'answer_set_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _requiredMeta =
      const VerificationMeta('required');
  @override
  late final GeneratedColumn<bool> required = GeneratedColumn<bool>(
      'required', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("required" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        code,
        titleAr,
        titleEng,
        sectionId,
        questionTypeId,
        forWhoId,
        answerSetId,
        required,
        position,
        isActive
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'question';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('question_type_id')) {
      context.handle(
          _questionTypeIdMeta,
          questionTypeId.isAcceptableOrUnknown(
              data['question_type_id']!, _questionTypeIdMeta));
    }
    if (data.containsKey('for_who_id')) {
      context.handle(_forWhoIdMeta,
          forWhoId.isAcceptableOrUnknown(data['for_who_id']!, _forWhoIdMeta));
    }
    if (data.containsKey('answer_set_id')) {
      context.handle(
          _answerSetIdMeta,
          answerSetId.isAcceptableOrUnknown(
              data['answer_set_id']!, _answerSetIdMeta));
    }
    if (data.containsKey('required')) {
      context.handle(_requiredMeta,
          required.isAcceptableOrUnknown(data['required']!, _requiredMeta));
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestionsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestionsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}section_id'])!,
      questionTypeId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}question_type_id']),
      forWhoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}for_who_id']),
      answerSetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer_set_id']),
      required: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}required'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(attachedDatabase, alias);
  }
}

class QuestionsData extends DataClass implements Insertable<QuestionsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
  final String titleAr;
  final String titleEng;
  final String sectionId;
  final String? questionTypeId;
  final String? forWhoId;
  final String? answerSetId;
  final bool required;
  final int position;
  final bool isActive;
  const QuestionsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.code,
      required this.titleAr,
      required this.titleEng,
      required this.sectionId,
      this.questionTypeId,
      this.forWhoId,
      this.answerSetId,
      required this.required,
      required this.position,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['code'] = Variable<String>(code);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['section_id'] = Variable<String>(sectionId);
    if (!nullToAbsent || questionTypeId != null) {
      map['question_type_id'] = Variable<String>(questionTypeId);
    }
    if (!nullToAbsent || forWhoId != null) {
      map['for_who_id'] = Variable<String>(forWhoId);
    }
    if (!nullToAbsent || answerSetId != null) {
      map['answer_set_id'] = Variable<String>(answerSetId);
    }
    map['required'] = Variable<bool>(required);
    map['position'] = Variable<int>(position);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      code: Value(code),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      sectionId: Value(sectionId),
      questionTypeId: questionTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(questionTypeId),
      forWhoId: forWhoId == null && nullToAbsent
          ? const Value.absent()
          : Value(forWhoId),
      answerSetId: answerSetId == null && nullToAbsent
          ? const Value.absent()
          : Value(answerSetId),
      required: Value(required),
      position: Value(position),
      isActive: Value(isActive),
    );
  }

  factory QuestionsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestionsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      code: serializer.fromJson<String>(json['code']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      sectionId: serializer.fromJson<String>(json['sectionId']),
      questionTypeId: serializer.fromJson<String?>(json['questionTypeId']),
      forWhoId: serializer.fromJson<String?>(json['forWhoId']),
      answerSetId: serializer.fromJson<String?>(json['answerSetId']),
      required: serializer.fromJson<bool>(json['required']),
      position: serializer.fromJson<int>(json['position']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'code': serializer.toJson<String>(code),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'sectionId': serializer.toJson<String>(sectionId),
      'questionTypeId': serializer.toJson<String?>(questionTypeId),
      'forWhoId': serializer.toJson<String?>(forWhoId),
      'answerSetId': serializer.toJson<String?>(answerSetId),
      'required': serializer.toJson<bool>(required),
      'position': serializer.toJson<int>(position),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  QuestionsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? code,
          String? titleAr,
          String? titleEng,
          String? sectionId,
          Value<String?> questionTypeId = const Value.absent(),
          Value<String?> forWhoId = const Value.absent(),
          Value<String?> answerSetId = const Value.absent(),
          bool? required,
          int? position,
          bool? isActive}) =>
      QuestionsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        code: code ?? this.code,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        sectionId: sectionId ?? this.sectionId,
        questionTypeId:
            questionTypeId.present ? questionTypeId.value : this.questionTypeId,
        forWhoId: forWhoId.present ? forWhoId.value : this.forWhoId,
        answerSetId: answerSetId.present ? answerSetId.value : this.answerSetId,
        required: required ?? this.required,
        position: position ?? this.position,
        isActive: isActive ?? this.isActive,
      );
  QuestionsData copyWithCompanion(QuestionsCompanion data) {
    return QuestionsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      code: data.code.present ? data.code.value : this.code,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      questionTypeId: data.questionTypeId.present
          ? data.questionTypeId.value
          : this.questionTypeId,
      forWhoId: data.forWhoId.present ? data.forWhoId.value : this.forWhoId,
      answerSetId:
          data.answerSetId.present ? data.answerSetId.value : this.answerSetId,
      required: data.required.present ? data.required.value : this.required,
      position: data.position.present ? data.position.value : this.position,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('sectionId: $sectionId, ')
          ..write('questionTypeId: $questionTypeId, ')
          ..write('forWhoId: $forWhoId, ')
          ..write('answerSetId: $answerSetId, ')
          ..write('required: $required, ')
          ..write('position: $position, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      code,
      titleAr,
      titleEng,
      sectionId,
      questionTypeId,
      forWhoId,
      answerSetId,
      required,
      position,
      isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestionsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.code == this.code &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.sectionId == this.sectionId &&
          other.questionTypeId == this.questionTypeId &&
          other.forWhoId == this.forWhoId &&
          other.answerSetId == this.answerSetId &&
          other.required == this.required &&
          other.position == this.position &&
          other.isActive == this.isActive);
}

class QuestionsCompanion extends UpdateCompanion<QuestionsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> code;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<String> sectionId;
  final Value<String?> questionTypeId;
  final Value<String?> forWhoId;
  final Value<String?> answerSetId;
  final Value<bool> required;
  final Value<int> position;
  final Value<bool> isActive;
  final Value<int> rowid;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.code = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.questionTypeId = const Value.absent(),
    this.forWhoId = const Value.absent(),
    this.answerSetId = const Value.absent(),
    this.required = const Value.absent(),
    this.position = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String code,
    required String titleAr,
    required String titleEng,
    required String sectionId,
    this.questionTypeId = const Value.absent(),
    this.forWhoId = const Value.absent(),
    this.answerSetId = const Value.absent(),
    this.required = const Value.absent(),
    this.position = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        code = Value(code),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        sectionId = Value(sectionId);
  static Insertable<QuestionsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? code,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<String>? sectionId,
    Expression<String>? questionTypeId,
    Expression<String>? forWhoId,
    Expression<String>? answerSetId,
    Expression<bool>? required,
    Expression<int>? position,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (code != null) 'code': code,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (sectionId != null) 'section_id': sectionId,
      if (questionTypeId != null) 'question_type_id': questionTypeId,
      if (forWhoId != null) 'for_who_id': forWhoId,
      if (answerSetId != null) 'answer_set_id': answerSetId,
      if (required != null) 'required': required,
      if (position != null) 'position': position,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? code,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<String>? sectionId,
      Value<String?>? questionTypeId,
      Value<String?>? forWhoId,
      Value<String?>? answerSetId,
      Value<bool>? required,
      Value<int>? position,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code ?? this.code,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      sectionId: sectionId ?? this.sectionId,
      questionTypeId: questionTypeId ?? this.questionTypeId,
      forWhoId: forWhoId ?? this.forWhoId,
      answerSetId: answerSetId ?? this.answerSetId,
      required: required ?? this.required,
      position: position ?? this.position,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (questionTypeId.present) {
      map['question_type_id'] = Variable<String>(questionTypeId.value);
    }
    if (forWhoId.present) {
      map['for_who_id'] = Variable<String>(forWhoId.value);
    }
    if (answerSetId.present) {
      map['answer_set_id'] = Variable<String>(answerSetId.value);
    }
    if (required.present) {
      map['required'] = Variable<bool>(required.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('code: $code, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('sectionId: $sectionId, ')
          ..write('questionTypeId: $questionTypeId, ')
          ..write('forWhoId: $forWhoId, ')
          ..write('answerSetId: $answerSetId, ')
          ..write('required: $required, ')
          ..write('position: $position, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WgqQuestionsTable extends WgqQuestions
    with TableInfo<$WgqQuestionsTable, WgqQuestionsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WgqQuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEngMeta =
      const VerificationMeta('titleEng');
  @override
  late final GeneratedColumn<String> titleEng = GeneratedColumn<String>(
      'title_eng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, titleAr, titleEng, isActive, code];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wgq_question';
  @override
  VerificationContext validateIntegrity(Insertable<WgqQuestionsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('title_eng')) {
      context.handle(_titleEngMeta,
          titleEng.isAcceptableOrUnknown(data['title_eng']!, _titleEngMeta));
    } else if (isInserting) {
      context.missing(_titleEngMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WgqQuestionsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WgqQuestionsData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      titleEng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_eng'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
    );
  }

  @override
  $WgqQuestionsTable createAlias(String alias) {
    return $WgqQuestionsTable(attachedDatabase, alias);
  }
}

class WgqQuestionsData extends DataClass
    implements Insertable<WgqQuestionsData> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String titleAr;
  final String titleEng;
  final bool isActive;
  final String code;
  const WgqQuestionsData(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.titleAr,
      required this.titleEng,
      required this.isActive,
      required this.code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['title_ar'] = Variable<String>(titleAr);
    map['title_eng'] = Variable<String>(titleEng);
    map['is_active'] = Variable<bool>(isActive);
    map['code'] = Variable<String>(code);
    return map;
  }

  WgqQuestionsCompanion toCompanion(bool nullToAbsent) {
    return WgqQuestionsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      titleAr: Value(titleAr),
      titleEng: Value(titleEng),
      isActive: Value(isActive),
      code: Value(code),
    );
  }

  factory WgqQuestionsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WgqQuestionsData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      titleEng: serializer.fromJson<String>(json['titleEng']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      code: serializer.fromJson<String>(json['code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'titleAr': serializer.toJson<String>(titleAr),
      'titleEng': serializer.toJson<String>(titleEng),
      'isActive': serializer.toJson<bool>(isActive),
      'code': serializer.toJson<String>(code),
    };
  }

  WgqQuestionsData copyWith(
          {String? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? titleAr,
          String? titleEng,
          bool? isActive,
          String? code}) =>
      WgqQuestionsData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        titleAr: titleAr ?? this.titleAr,
        titleEng: titleEng ?? this.titleEng,
        isActive: isActive ?? this.isActive,
        code: code ?? this.code,
      );
  WgqQuestionsData copyWithCompanion(WgqQuestionsCompanion data) {
    return WgqQuestionsData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      titleEng: data.titleEng.present ? data.titleEng.value : this.titleEng,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      code: data.code.present ? data.code.value : this.code,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WgqQuestionsData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, titleAr, titleEng, isActive, code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WgqQuestionsData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.titleAr == this.titleAr &&
          other.titleEng == this.titleEng &&
          other.isActive == this.isActive &&
          other.code == this.code);
}

class WgqQuestionsCompanion extends UpdateCompanion<WgqQuestionsData> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> titleAr;
  final Value<String> titleEng;
  final Value<bool> isActive;
  final Value<String> code;
  final Value<int> rowid;
  const WgqQuestionsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.titleEng = const Value.absent(),
    this.isActive = const Value.absent(),
    this.code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WgqQuestionsCompanion.insert({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String titleAr,
    required String titleEng,
    this.isActive = const Value.absent(),
    required String code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        titleAr = Value(titleAr),
        titleEng = Value(titleEng),
        code = Value(code);
  static Insertable<WgqQuestionsData> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? titleAr,
    Expression<String>? titleEng,
    Expression<bool>? isActive,
    Expression<String>? code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (titleAr != null) 'title_ar': titleAr,
      if (titleEng != null) 'title_eng': titleEng,
      if (isActive != null) 'is_active': isActive,
      if (code != null) 'code': code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WgqQuestionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? titleAr,
      Value<String>? titleEng,
      Value<bool>? isActive,
      Value<String>? code,
      Value<int>? rowid}) {
    return WgqQuestionsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      titleAr: titleAr ?? this.titleAr,
      titleEng: titleEng ?? this.titleEng,
      isActive: isActive ?? this.isActive,
      code: code ?? this.code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (titleEng.present) {
      map['title_eng'] = Variable<String>(titleEng.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WgqQuestionsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('titleAr: $titleAr, ')
          ..write('titleEng: $titleEng, ')
          ..write('isActive: $isActive, ')
          ..write('code: $code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OutboxTable extends Outbox with TableInfo<$OutboxTable, OutboxData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OutboxTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _targetTableMeta =
      const VerificationMeta('targetTable');
  @override
  late final GeneratedColumn<String> targetTable = GeneratedColumn<String>(
      'table_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _opMeta = const VerificationMeta('op');
  @override
  late final GeneratedColumn<String> op = GeneratedColumn<String>(
      'op', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rowIdMeta = const VerificationMeta('rowId');
  @override
  late final GeneratedColumn<String> rowId = GeneratedColumn<String>(
      'row_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadMeta =
      const VerificationMeta('payload');
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
      'payload', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _queuedAtMeta =
      const VerificationMeta('queuedAt');
  @override
  late final GeneratedColumn<DateTime> queuedAt = GeneratedColumn<DateTime>(
      'queued_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _attemptMeta =
      const VerificationMeta('attempt');
  @override
  late final GeneratedColumn<int> attempt = GeneratedColumn<int>(
      'attempt', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastErrorMeta =
      const VerificationMeta('lastError');
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
      'last_error', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, targetTable, op, rowId, payload, queuedAt, attempt, lastError];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'outbox';
  @override
  VerificationContext validateIntegrity(Insertable<OutboxData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('table_name')) {
      context.handle(
          _targetTableMeta,
          targetTable.isAcceptableOrUnknown(
              data['table_name']!, _targetTableMeta));
    } else if (isInserting) {
      context.missing(_targetTableMeta);
    }
    if (data.containsKey('op')) {
      context.handle(_opMeta, op.isAcceptableOrUnknown(data['op']!, _opMeta));
    } else if (isInserting) {
      context.missing(_opMeta);
    }
    if (data.containsKey('row_id')) {
      context.handle(
          _rowIdMeta, rowId.isAcceptableOrUnknown(data['row_id']!, _rowIdMeta));
    } else if (isInserting) {
      context.missing(_rowIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(_payloadMeta,
          payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta));
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('queued_at')) {
      context.handle(_queuedAtMeta,
          queuedAt.isAcceptableOrUnknown(data['queued_at']!, _queuedAtMeta));
    } else if (isInserting) {
      context.missing(_queuedAtMeta);
    }
    if (data.containsKey('attempt')) {
      context.handle(_attemptMeta,
          attempt.isAcceptableOrUnknown(data['attempt']!, _attemptMeta));
    }
    if (data.containsKey('last_error')) {
      context.handle(_lastErrorMeta,
          lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OutboxData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OutboxData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      targetTable: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_name'])!,
      op: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}op'])!,
      rowId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}row_id'])!,
      payload: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload'])!,
      queuedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}queued_at'])!,
      attempt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}attempt'])!,
      lastError: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_error']),
    );
  }

  @override
  $OutboxTable createAlias(String alias) {
    return $OutboxTable(attachedDatabase, alias);
  }
}

class OutboxData extends DataClass implements Insertable<OutboxData> {
  final int id;
  final String targetTable;
  final String op;
  final String rowId;
  final String payload;
  final DateTime queuedAt;
  final int attempt;
  final String? lastError;
  const OutboxData(
      {required this.id,
      required this.targetTable,
      required this.op,
      required this.rowId,
      required this.payload,
      required this.queuedAt,
      required this.attempt,
      this.lastError});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['table_name'] = Variable<String>(targetTable);
    map['op'] = Variable<String>(op);
    map['row_id'] = Variable<String>(rowId);
    map['payload'] = Variable<String>(payload);
    map['queued_at'] = Variable<DateTime>(queuedAt);
    map['attempt'] = Variable<int>(attempt);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    return map;
  }

  OutboxCompanion toCompanion(bool nullToAbsent) {
    return OutboxCompanion(
      id: Value(id),
      targetTable: Value(targetTable),
      op: Value(op),
      rowId: Value(rowId),
      payload: Value(payload),
      queuedAt: Value(queuedAt),
      attempt: Value(attempt),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
    );
  }

  factory OutboxData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OutboxData(
      id: serializer.fromJson<int>(json['id']),
      targetTable: serializer.fromJson<String>(json['targetTable']),
      op: serializer.fromJson<String>(json['op']),
      rowId: serializer.fromJson<String>(json['rowId']),
      payload: serializer.fromJson<String>(json['payload']),
      queuedAt: serializer.fromJson<DateTime>(json['queuedAt']),
      attempt: serializer.fromJson<int>(json['attempt']),
      lastError: serializer.fromJson<String?>(json['lastError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'targetTable': serializer.toJson<String>(targetTable),
      'op': serializer.toJson<String>(op),
      'rowId': serializer.toJson<String>(rowId),
      'payload': serializer.toJson<String>(payload),
      'queuedAt': serializer.toJson<DateTime>(queuedAt),
      'attempt': serializer.toJson<int>(attempt),
      'lastError': serializer.toJson<String?>(lastError),
    };
  }

  OutboxData copyWith(
          {int? id,
          String? targetTable,
          String? op,
          String? rowId,
          String? payload,
          DateTime? queuedAt,
          int? attempt,
          Value<String?> lastError = const Value.absent()}) =>
      OutboxData(
        id: id ?? this.id,
        targetTable: targetTable ?? this.targetTable,
        op: op ?? this.op,
        rowId: rowId ?? this.rowId,
        payload: payload ?? this.payload,
        queuedAt: queuedAt ?? this.queuedAt,
        attempt: attempt ?? this.attempt,
        lastError: lastError.present ? lastError.value : this.lastError,
      );
  OutboxData copyWithCompanion(OutboxCompanion data) {
    return OutboxData(
      id: data.id.present ? data.id.value : this.id,
      targetTable:
          data.targetTable.present ? data.targetTable.value : this.targetTable,
      op: data.op.present ? data.op.value : this.op,
      rowId: data.rowId.present ? data.rowId.value : this.rowId,
      payload: data.payload.present ? data.payload.value : this.payload,
      queuedAt: data.queuedAt.present ? data.queuedAt.value : this.queuedAt,
      attempt: data.attempt.present ? data.attempt.value : this.attempt,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OutboxData(')
          ..write('id: $id, ')
          ..write('targetTable: $targetTable, ')
          ..write('op: $op, ')
          ..write('rowId: $rowId, ')
          ..write('payload: $payload, ')
          ..write('queuedAt: $queuedAt, ')
          ..write('attempt: $attempt, ')
          ..write('lastError: $lastError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, targetTable, op, rowId, payload, queuedAt, attempt, lastError);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OutboxData &&
          other.id == this.id &&
          other.targetTable == this.targetTable &&
          other.op == this.op &&
          other.rowId == this.rowId &&
          other.payload == this.payload &&
          other.queuedAt == this.queuedAt &&
          other.attempt == this.attempt &&
          other.lastError == this.lastError);
}

class OutboxCompanion extends UpdateCompanion<OutboxData> {
  final Value<int> id;
  final Value<String> targetTable;
  final Value<String> op;
  final Value<String> rowId;
  final Value<String> payload;
  final Value<DateTime> queuedAt;
  final Value<int> attempt;
  final Value<String?> lastError;
  const OutboxCompanion({
    this.id = const Value.absent(),
    this.targetTable = const Value.absent(),
    this.op = const Value.absent(),
    this.rowId = const Value.absent(),
    this.payload = const Value.absent(),
    this.queuedAt = const Value.absent(),
    this.attempt = const Value.absent(),
    this.lastError = const Value.absent(),
  });
  OutboxCompanion.insert({
    this.id = const Value.absent(),
    required String targetTable,
    required String op,
    required String rowId,
    required String payload,
    required DateTime queuedAt,
    this.attempt = const Value.absent(),
    this.lastError = const Value.absent(),
  })  : targetTable = Value(targetTable),
        op = Value(op),
        rowId = Value(rowId),
        payload = Value(payload),
        queuedAt = Value(queuedAt);
  static Insertable<OutboxData> custom({
    Expression<int>? id,
    Expression<String>? targetTable,
    Expression<String>? op,
    Expression<String>? rowId,
    Expression<String>? payload,
    Expression<DateTime>? queuedAt,
    Expression<int>? attempt,
    Expression<String>? lastError,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (targetTable != null) 'table_name': targetTable,
      if (op != null) 'op': op,
      if (rowId != null) 'row_id': rowId,
      if (payload != null) 'payload': payload,
      if (queuedAt != null) 'queued_at': queuedAt,
      if (attempt != null) 'attempt': attempt,
      if (lastError != null) 'last_error': lastError,
    });
  }

  OutboxCompanion copyWith(
      {Value<int>? id,
      Value<String>? targetTable,
      Value<String>? op,
      Value<String>? rowId,
      Value<String>? payload,
      Value<DateTime>? queuedAt,
      Value<int>? attempt,
      Value<String?>? lastError}) {
    return OutboxCompanion(
      id: id ?? this.id,
      targetTable: targetTable ?? this.targetTable,
      op: op ?? this.op,
      rowId: rowId ?? this.rowId,
      payload: payload ?? this.payload,
      queuedAt: queuedAt ?? this.queuedAt,
      attempt: attempt ?? this.attempt,
      lastError: lastError ?? this.lastError,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (targetTable.present) {
      map['table_name'] = Variable<String>(targetTable.value);
    }
    if (op.present) {
      map['op'] = Variable<String>(op.value);
    }
    if (rowId.present) {
      map['row_id'] = Variable<String>(rowId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (queuedAt.present) {
      map['queued_at'] = Variable<DateTime>(queuedAt.value);
    }
    if (attempt.present) {
      map['attempt'] = Variable<int>(attempt.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OutboxCompanion(')
          ..write('id: $id, ')
          ..write('targetTable: $targetTable, ')
          ..write('op: $op, ')
          ..write('rowId: $rowId, ')
          ..write('payload: $payload, ')
          ..write('queuedAt: $queuedAt, ')
          ..write('attempt: $attempt, ')
          ..write('lastError: $lastError')
          ..write(')'))
        .toString();
  }
}

class $SyncCursorTable extends SyncCursor
    with TableInfo<$SyncCursorTable, SyncCursorData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncCursorTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cursorTableMeta =
      const VerificationMeta('cursorTable');
  @override
  late final GeneratedColumn<String> cursorTable = GeneratedColumn<String>(
      'table_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedAtMeta =
      const VerificationMeta('lastUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedAt =
      GeneratedColumn<DateTime>('last_updated_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [cursorTable, lastUpdatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_cursor';
  @override
  VerificationContext validateIntegrity(Insertable<SyncCursorData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('table_name')) {
      context.handle(
          _cursorTableMeta,
          cursorTable.isAcceptableOrUnknown(
              data['table_name']!, _cursorTableMeta));
    } else if (isInserting) {
      context.missing(_cursorTableMeta);
    }
    if (data.containsKey('last_updated_at')) {
      context.handle(
          _lastUpdatedAtMeta,
          lastUpdatedAt.isAcceptableOrUnknown(
              data['last_updated_at']!, _lastUpdatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cursorTable};
  @override
  SyncCursorData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncCursorData(
      cursorTable: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_name'])!,
      lastUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_at']),
    );
  }

  @override
  $SyncCursorTable createAlias(String alias) {
    return $SyncCursorTable(attachedDatabase, alias);
  }
}

class SyncCursorData extends DataClass implements Insertable<SyncCursorData> {
  final String cursorTable;
  final DateTime? lastUpdatedAt;
  const SyncCursorData({required this.cursorTable, this.lastUpdatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['table_name'] = Variable<String>(cursorTable);
    if (!nullToAbsent || lastUpdatedAt != null) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt);
    }
    return map;
  }

  SyncCursorCompanion toCompanion(bool nullToAbsent) {
    return SyncCursorCompanion(
      cursorTable: Value(cursorTable),
      lastUpdatedAt: lastUpdatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedAt),
    );
  }

  factory SyncCursorData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncCursorData(
      cursorTable: serializer.fromJson<String>(json['cursorTable']),
      lastUpdatedAt: serializer.fromJson<DateTime?>(json['lastUpdatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cursorTable': serializer.toJson<String>(cursorTable),
      'lastUpdatedAt': serializer.toJson<DateTime?>(lastUpdatedAt),
    };
  }

  SyncCursorData copyWith(
          {String? cursorTable,
          Value<DateTime?> lastUpdatedAt = const Value.absent()}) =>
      SyncCursorData(
        cursorTable: cursorTable ?? this.cursorTable,
        lastUpdatedAt:
            lastUpdatedAt.present ? lastUpdatedAt.value : this.lastUpdatedAt,
      );
  SyncCursorData copyWithCompanion(SyncCursorCompanion data) {
    return SyncCursorData(
      cursorTable:
          data.cursorTable.present ? data.cursorTable.value : this.cursorTable,
      lastUpdatedAt: data.lastUpdatedAt.present
          ? data.lastUpdatedAt.value
          : this.lastUpdatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncCursorData(')
          ..write('cursorTable: $cursorTable, ')
          ..write('lastUpdatedAt: $lastUpdatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cursorTable, lastUpdatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncCursorData &&
          other.cursorTable == this.cursorTable &&
          other.lastUpdatedAt == this.lastUpdatedAt);
}

class SyncCursorCompanion extends UpdateCompanion<SyncCursorData> {
  final Value<String> cursorTable;
  final Value<DateTime?> lastUpdatedAt;
  final Value<int> rowid;
  const SyncCursorCompanion({
    this.cursorTable = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncCursorCompanion.insert({
    required String cursorTable,
    this.lastUpdatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : cursorTable = Value(cursorTable);
  static Insertable<SyncCursorData> custom({
    Expression<String>? cursorTable,
    Expression<DateTime>? lastUpdatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cursorTable != null) 'table_name': cursorTable,
      if (lastUpdatedAt != null) 'last_updated_at': lastUpdatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncCursorCompanion copyWith(
      {Value<String>? cursorTable,
      Value<DateTime?>? lastUpdatedAt,
      Value<int>? rowid}) {
    return SyncCursorCompanion(
      cursorTable: cursorTable ?? this.cursorTable,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cursorTable.present) {
      map['table_name'] = Variable<String>(cursorTable.value);
    }
    if (lastUpdatedAt.present) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncCursorCompanion(')
          ..write('cursorTable: $cursorTable, ')
          ..write('lastUpdatedAt: $lastUpdatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FamiliesTable families = $FamiliesTable(this);
  late final $MembersTable members = $MembersTable(this);
  late final $FamilyAnswerTable familyAnswer = $FamilyAnswerTable(this);
  late final $MultipleAnswerQuestionTable multipleAnswerQuestion =
      $MultipleAnswerQuestionTable(this);
  late final $RelationsTable relations = $RelationsTable(this);
  late final $GendersTable genders = $GendersTable(this);
  late final $MaritalStatusTable maritalStatus = $MaritalStatusTable(this);
  late final $JobsTable jobs = $JobsTable(this);
  late final $NationalitiesTable nationalities = $NationalitiesTable(this);
  late final $EducationLevelsTable educationLevels =
      $EducationLevelsTable(this);
  late final $EducationStatusesTable educationStatuses =
      $EducationStatusesTable(this);
  late final $DocumentTypesTable documentTypes = $DocumentTypesTable(this);
  late final $RequiredServicesTable requiredServices =
      $RequiredServicesTable(this);
  late final $ServiceStatusesTable serviceStatuses =
      $ServiceStatusesTable(this);
  late final $CenterTypesTable centerTypes = $CenterTypesTable(this);
  late final $ModalitiesTable modalities = $ModalitiesTable(this);
  late final $ForWhosTable forWhos = $ForWhosTable(this);
  late final $QuestionTypesTable questionTypes = $QuestionTypesTable(this);
  late final $SectionsTable sections = $SectionsTable(this);
  late final $AnswerSetsTable answerSets = $AnswerSetsTable(this);
  late final $AnswerItemsTable answerItems = $AnswerItemsTable(this);
  late final $QuestionsTable questions = $QuestionsTable(this);
  late final $WgqQuestionsTable wgqQuestions = $WgqQuestionsTable(this);
  late final $OutboxTable outbox = $OutboxTable(this);
  late final $SyncCursorTable syncCursor = $SyncCursorTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        families,
        members,
        familyAnswer,
        multipleAnswerQuestion,
        relations,
        genders,
        maritalStatus,
        jobs,
        nationalities,
        educationLevels,
        educationStatuses,
        documentTypes,
        requiredServices,
        serviceStatuses,
        centerTypes,
        modalities,
        forWhos,
        questionTypes,
        sections,
        answerSets,
        answerItems,
        questions,
        wgqQuestions,
        outbox,
        syncCursor
      ];
}

typedef $$FamiliesTableCreateCompanionBuilder = FamiliesCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required DateTime registrationDate,
  Value<String?> staffId,
  Value<String?> modalityId,
  Value<String?> centerId,
  Value<String?> locationId,
  Value<String?> streetName,
  Value<int?> numOfBuilding,
  Value<int?> floorNumber,
  Value<String?> documentTypeId,
  Value<String?> documentNum,
  Value<String?> socialStatusId,
  Value<bool> hasLostMembers,
  Value<int> rowid,
});
typedef $$FamiliesTableUpdateCompanionBuilder = FamiliesCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime> registrationDate,
  Value<String?> staffId,
  Value<String?> modalityId,
  Value<String?> centerId,
  Value<String?> locationId,
  Value<String?> streetName,
  Value<int?> numOfBuilding,
  Value<int?> floorNumber,
  Value<String?> documentTypeId,
  Value<String?> documentNum,
  Value<String?> socialStatusId,
  Value<bool> hasLostMembers,
  Value<int> rowid,
});

class $$FamiliesTableFilterComposer
    extends Composer<_$AppDatabase, $FamiliesTable> {
  $$FamiliesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get staffId => $composableBuilder(
      column: $table.staffId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get modalityId => $composableBuilder(
      column: $table.modalityId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get centerId => $composableBuilder(
      column: $table.centerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get locationId => $composableBuilder(
      column: $table.locationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get streetName => $composableBuilder(
      column: $table.streetName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get numOfBuilding => $composableBuilder(
      column: $table.numOfBuilding, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get socialStatusId => $composableBuilder(
      column: $table.socialStatusId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasLostMembers => $composableBuilder(
      column: $table.hasLostMembers,
      builder: (column) => ColumnFilters(column));
}

class $$FamiliesTableOrderingComposer
    extends Composer<_$AppDatabase, $FamiliesTable> {
  $$FamiliesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get staffId => $composableBuilder(
      column: $table.staffId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get modalityId => $composableBuilder(
      column: $table.modalityId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get centerId => $composableBuilder(
      column: $table.centerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get locationId => $composableBuilder(
      column: $table.locationId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get streetName => $composableBuilder(
      column: $table.streetName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get numOfBuilding => $composableBuilder(
      column: $table.numOfBuilding,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialStatusId => $composableBuilder(
      column: $table.socialStatusId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasLostMembers => $composableBuilder(
      column: $table.hasLostMembers,
      builder: (column) => ColumnOrderings(column));
}

class $$FamiliesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FamiliesTable> {
  $$FamiliesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate, builder: (column) => column);

  GeneratedColumn<String> get staffId =>
      $composableBuilder(column: $table.staffId, builder: (column) => column);

  GeneratedColumn<String> get modalityId => $composableBuilder(
      column: $table.modalityId, builder: (column) => column);

  GeneratedColumn<String> get centerId =>
      $composableBuilder(column: $table.centerId, builder: (column) => column);

  GeneratedColumn<String> get locationId => $composableBuilder(
      column: $table.locationId, builder: (column) => column);

  GeneratedColumn<String> get streetName => $composableBuilder(
      column: $table.streetName, builder: (column) => column);

  GeneratedColumn<int> get numOfBuilding => $composableBuilder(
      column: $table.numOfBuilding, builder: (column) => column);

  GeneratedColumn<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => column);

  GeneratedColumn<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId, builder: (column) => column);

  GeneratedColumn<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => column);

  GeneratedColumn<String> get socialStatusId => $composableBuilder(
      column: $table.socialStatusId, builder: (column) => column);

  GeneratedColumn<bool> get hasLostMembers => $composableBuilder(
      column: $table.hasLostMembers, builder: (column) => column);
}

class $$FamiliesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FamiliesTable,
    FamiliesData,
    $$FamiliesTableFilterComposer,
    $$FamiliesTableOrderingComposer,
    $$FamiliesTableAnnotationComposer,
    $$FamiliesTableCreateCompanionBuilder,
    $$FamiliesTableUpdateCompanionBuilder,
    (FamiliesData, BaseReferences<_$AppDatabase, $FamiliesTable, FamiliesData>),
    FamiliesData,
    PrefetchHooks Function()> {
  $$FamiliesTableTableManager(_$AppDatabase db, $FamiliesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FamiliesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FamiliesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FamiliesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> registrationDate = const Value.absent(),
            Value<String?> staffId = const Value.absent(),
            Value<String?> modalityId = const Value.absent(),
            Value<String?> centerId = const Value.absent(),
            Value<String?> locationId = const Value.absent(),
            Value<String?> streetName = const Value.absent(),
            Value<int?> numOfBuilding = const Value.absent(),
            Value<int?> floorNumber = const Value.absent(),
            Value<String?> documentTypeId = const Value.absent(),
            Value<String?> documentNum = const Value.absent(),
            Value<String?> socialStatusId = const Value.absent(),
            Value<bool> hasLostMembers = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FamiliesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            registrationDate: registrationDate,
            staffId: staffId,
            modalityId: modalityId,
            centerId: centerId,
            locationId: locationId,
            streetName: streetName,
            numOfBuilding: numOfBuilding,
            floorNumber: floorNumber,
            documentTypeId: documentTypeId,
            documentNum: documentNum,
            socialStatusId: socialStatusId,
            hasLostMembers: hasLostMembers,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required DateTime registrationDate,
            Value<String?> staffId = const Value.absent(),
            Value<String?> modalityId = const Value.absent(),
            Value<String?> centerId = const Value.absent(),
            Value<String?> locationId = const Value.absent(),
            Value<String?> streetName = const Value.absent(),
            Value<int?> numOfBuilding = const Value.absent(),
            Value<int?> floorNumber = const Value.absent(),
            Value<String?> documentTypeId = const Value.absent(),
            Value<String?> documentNum = const Value.absent(),
            Value<String?> socialStatusId = const Value.absent(),
            Value<bool> hasLostMembers = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FamiliesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            registrationDate: registrationDate,
            staffId: staffId,
            modalityId: modalityId,
            centerId: centerId,
            locationId: locationId,
            streetName: streetName,
            numOfBuilding: numOfBuilding,
            floorNumber: floorNumber,
            documentTypeId: documentTypeId,
            documentNum: documentNum,
            socialStatusId: socialStatusId,
            hasLostMembers: hasLostMembers,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FamiliesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FamiliesTable,
    FamiliesData,
    $$FamiliesTableFilterComposer,
    $$FamiliesTableOrderingComposer,
    $$FamiliesTableAnnotationComposer,
    $$FamiliesTableCreateCompanionBuilder,
    $$FamiliesTableUpdateCompanionBuilder,
    (FamiliesData, BaseReferences<_$AppDatabase, $FamiliesTable, FamiliesData>),
    FamiliesData,
    PrefetchHooks Function()>;
typedef $$MembersTableCreateCompanionBuilder = MembersCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required bool isRespondent,
  required bool isHoh,
  required String firstName,
  required String fatherName,
  required String lastName,
  required DateTime dateOfBirth,
  Value<String?> nationalityId,
  Value<String?> documentTypeId,
  Value<String?> documentNum,
  Value<String?> phone1,
  Value<String?> phone2,
  required String maritalStatusId,
  required String relationId,
  required String familyId,
  Value<String?> genderId,
  Value<int> rowid,
});
typedef $$MembersTableUpdateCompanionBuilder = MembersCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> isRespondent,
  Value<bool> isHoh,
  Value<String> firstName,
  Value<String> fatherName,
  Value<String> lastName,
  Value<DateTime> dateOfBirth,
  Value<String?> nationalityId,
  Value<String?> documentTypeId,
  Value<String?> documentNum,
  Value<String?> phone1,
  Value<String?> phone2,
  Value<String> maritalStatusId,
  Value<String> relationId,
  Value<String> familyId,
  Value<String?> genderId,
  Value<int> rowid,
});

class $$MembersTableFilterComposer
    extends Composer<_$AppDatabase, $MembersTable> {
  $$MembersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isRespondent => $composableBuilder(
      column: $table.isRespondent, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isHoh => $composableBuilder(
      column: $table.isHoh, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalityId => $composableBuilder(
      column: $table.nationalityId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone1 => $composableBuilder(
      column: $table.phone1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone2 => $composableBuilder(
      column: $table.phone2, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get maritalStatusId => $composableBuilder(
      column: $table.maritalStatusId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get relationId => $composableBuilder(
      column: $table.relationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familyId => $composableBuilder(
      column: $table.familyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get genderId => $composableBuilder(
      column: $table.genderId, builder: (column) => ColumnFilters(column));
}

class $$MembersTableOrderingComposer
    extends Composer<_$AppDatabase, $MembersTable> {
  $$MembersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isRespondent => $composableBuilder(
      column: $table.isRespondent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isHoh => $composableBuilder(
      column: $table.isHoh, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalityId => $composableBuilder(
      column: $table.nationalityId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone1 => $composableBuilder(
      column: $table.phone1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone2 => $composableBuilder(
      column: $table.phone2, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get maritalStatusId => $composableBuilder(
      column: $table.maritalStatusId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get relationId => $composableBuilder(
      column: $table.relationId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyId => $composableBuilder(
      column: $table.familyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genderId => $composableBuilder(
      column: $table.genderId, builder: (column) => ColumnOrderings(column));
}

class $$MembersTableAnnotationComposer
    extends Composer<_$AppDatabase, $MembersTable> {
  $$MembersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isRespondent => $composableBuilder(
      column: $table.isRespondent, builder: (column) => column);

  GeneratedColumn<bool> get isHoh =>
      $composableBuilder(column: $table.isHoh, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => column);

  GeneratedColumn<String> get nationalityId => $composableBuilder(
      column: $table.nationalityId, builder: (column) => column);

  GeneratedColumn<String> get documentTypeId => $composableBuilder(
      column: $table.documentTypeId, builder: (column) => column);

  GeneratedColumn<String> get documentNum => $composableBuilder(
      column: $table.documentNum, builder: (column) => column);

  GeneratedColumn<String> get phone1 =>
      $composableBuilder(column: $table.phone1, builder: (column) => column);

  GeneratedColumn<String> get phone2 =>
      $composableBuilder(column: $table.phone2, builder: (column) => column);

  GeneratedColumn<String> get maritalStatusId => $composableBuilder(
      column: $table.maritalStatusId, builder: (column) => column);

  GeneratedColumn<String> get relationId => $composableBuilder(
      column: $table.relationId, builder: (column) => column);

  GeneratedColumn<String> get familyId =>
      $composableBuilder(column: $table.familyId, builder: (column) => column);

  GeneratedColumn<String> get genderId =>
      $composableBuilder(column: $table.genderId, builder: (column) => column);
}

class $$MembersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MembersTable,
    MembersData,
    $$MembersTableFilterComposer,
    $$MembersTableOrderingComposer,
    $$MembersTableAnnotationComposer,
    $$MembersTableCreateCompanionBuilder,
    $$MembersTableUpdateCompanionBuilder,
    (MembersData, BaseReferences<_$AppDatabase, $MembersTable, MembersData>),
    MembersData,
    PrefetchHooks Function()> {
  $$MembersTableTableManager(_$AppDatabase db, $MembersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MembersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MembersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MembersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> isRespondent = const Value.absent(),
            Value<bool> isHoh = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String> fatherName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<DateTime> dateOfBirth = const Value.absent(),
            Value<String?> nationalityId = const Value.absent(),
            Value<String?> documentTypeId = const Value.absent(),
            Value<String?> documentNum = const Value.absent(),
            Value<String?> phone1 = const Value.absent(),
            Value<String?> phone2 = const Value.absent(),
            Value<String> maritalStatusId = const Value.absent(),
            Value<String> relationId = const Value.absent(),
            Value<String> familyId = const Value.absent(),
            Value<String?> genderId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MembersCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            isRespondent: isRespondent,
            isHoh: isHoh,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            dateOfBirth: dateOfBirth,
            nationalityId: nationalityId,
            documentTypeId: documentTypeId,
            documentNum: documentNum,
            phone1: phone1,
            phone2: phone2,
            maritalStatusId: maritalStatusId,
            relationId: relationId,
            familyId: familyId,
            genderId: genderId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required bool isRespondent,
            required bool isHoh,
            required String firstName,
            required String fatherName,
            required String lastName,
            required DateTime dateOfBirth,
            Value<String?> nationalityId = const Value.absent(),
            Value<String?> documentTypeId = const Value.absent(),
            Value<String?> documentNum = const Value.absent(),
            Value<String?> phone1 = const Value.absent(),
            Value<String?> phone2 = const Value.absent(),
            required String maritalStatusId,
            required String relationId,
            required String familyId,
            Value<String?> genderId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MembersCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            isRespondent: isRespondent,
            isHoh: isHoh,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            dateOfBirth: dateOfBirth,
            nationalityId: nationalityId,
            documentTypeId: documentTypeId,
            documentNum: documentNum,
            phone1: phone1,
            phone2: phone2,
            maritalStatusId: maritalStatusId,
            relationId: relationId,
            familyId: familyId,
            genderId: genderId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MembersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MembersTable,
    MembersData,
    $$MembersTableFilterComposer,
    $$MembersTableOrderingComposer,
    $$MembersTableAnnotationComposer,
    $$MembersTableCreateCompanionBuilder,
    $$MembersTableUpdateCompanionBuilder,
    (MembersData, BaseReferences<_$AppDatabase, $MembersTable, MembersData>),
    MembersData,
    PrefetchHooks Function()>;
typedef $$FamilyAnswerTableCreateCompanionBuilder = FamilyAnswerCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String questionId,
  Value<int?> valueInt,
  Value<double?> valueFloat,
  Value<bool?> valueBool,
  Value<DateTime?> valueDate,
  Value<String?> valueTime,
  Value<DateTime?> valueDatetime,
  Value<String?> valueText,
  Value<String?> singleValueId,
  required String familyId,
  Value<String?> memberId,
  Value<int> rowid,
});
typedef $$FamilyAnswerTableUpdateCompanionBuilder = FamilyAnswerCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> questionId,
  Value<int?> valueInt,
  Value<double?> valueFloat,
  Value<bool?> valueBool,
  Value<DateTime?> valueDate,
  Value<String?> valueTime,
  Value<DateTime?> valueDatetime,
  Value<String?> valueText,
  Value<String?> singleValueId,
  Value<String> familyId,
  Value<String?> memberId,
  Value<int> rowid,
});

class $$FamilyAnswerTableFilterComposer
    extends Composer<_$AppDatabase, $FamilyAnswerTable> {
  $$FamilyAnswerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get questionId => $composableBuilder(
      column: $table.questionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get valueInt => $composableBuilder(
      column: $table.valueInt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get valueFloat => $composableBuilder(
      column: $table.valueFloat, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get valueBool => $composableBuilder(
      column: $table.valueBool, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get valueDate => $composableBuilder(
      column: $table.valueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get valueTime => $composableBuilder(
      column: $table.valueTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get valueDatetime => $composableBuilder(
      column: $table.valueDatetime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get valueText => $composableBuilder(
      column: $table.valueText, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get singleValueId => $composableBuilder(
      column: $table.singleValueId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familyId => $composableBuilder(
      column: $table.familyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get memberId => $composableBuilder(
      column: $table.memberId, builder: (column) => ColumnFilters(column));
}

class $$FamilyAnswerTableOrderingComposer
    extends Composer<_$AppDatabase, $FamilyAnswerTable> {
  $$FamilyAnswerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get questionId => $composableBuilder(
      column: $table.questionId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get valueInt => $composableBuilder(
      column: $table.valueInt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get valueFloat => $composableBuilder(
      column: $table.valueFloat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get valueBool => $composableBuilder(
      column: $table.valueBool, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get valueDate => $composableBuilder(
      column: $table.valueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get valueTime => $composableBuilder(
      column: $table.valueTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get valueDatetime => $composableBuilder(
      column: $table.valueDatetime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get valueText => $composableBuilder(
      column: $table.valueText, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get singleValueId => $composableBuilder(
      column: $table.singleValueId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyId => $composableBuilder(
      column: $table.familyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get memberId => $composableBuilder(
      column: $table.memberId, builder: (column) => ColumnOrderings(column));
}

class $$FamilyAnswerTableAnnotationComposer
    extends Composer<_$AppDatabase, $FamilyAnswerTable> {
  $$FamilyAnswerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get questionId => $composableBuilder(
      column: $table.questionId, builder: (column) => column);

  GeneratedColumn<int> get valueInt =>
      $composableBuilder(column: $table.valueInt, builder: (column) => column);

  GeneratedColumn<double> get valueFloat => $composableBuilder(
      column: $table.valueFloat, builder: (column) => column);

  GeneratedColumn<bool> get valueBool =>
      $composableBuilder(column: $table.valueBool, builder: (column) => column);

  GeneratedColumn<DateTime> get valueDate =>
      $composableBuilder(column: $table.valueDate, builder: (column) => column);

  GeneratedColumn<String> get valueTime =>
      $composableBuilder(column: $table.valueTime, builder: (column) => column);

  GeneratedColumn<DateTime> get valueDatetime => $composableBuilder(
      column: $table.valueDatetime, builder: (column) => column);

  GeneratedColumn<String> get valueText =>
      $composableBuilder(column: $table.valueText, builder: (column) => column);

  GeneratedColumn<String> get singleValueId => $composableBuilder(
      column: $table.singleValueId, builder: (column) => column);

  GeneratedColumn<String> get familyId =>
      $composableBuilder(column: $table.familyId, builder: (column) => column);

  GeneratedColumn<String> get memberId =>
      $composableBuilder(column: $table.memberId, builder: (column) => column);
}

class $$FamilyAnswerTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FamilyAnswerTable,
    FamilyAnswersData,
    $$FamilyAnswerTableFilterComposer,
    $$FamilyAnswerTableOrderingComposer,
    $$FamilyAnswerTableAnnotationComposer,
    $$FamilyAnswerTableCreateCompanionBuilder,
    $$FamilyAnswerTableUpdateCompanionBuilder,
    (
      FamilyAnswersData,
      BaseReferences<_$AppDatabase, $FamilyAnswerTable, FamilyAnswersData>
    ),
    FamilyAnswersData,
    PrefetchHooks Function()> {
  $$FamilyAnswerTableTableManager(_$AppDatabase db, $FamilyAnswerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FamilyAnswerTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FamilyAnswerTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FamilyAnswerTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> questionId = const Value.absent(),
            Value<int?> valueInt = const Value.absent(),
            Value<double?> valueFloat = const Value.absent(),
            Value<bool?> valueBool = const Value.absent(),
            Value<DateTime?> valueDate = const Value.absent(),
            Value<String?> valueTime = const Value.absent(),
            Value<DateTime?> valueDatetime = const Value.absent(),
            Value<String?> valueText = const Value.absent(),
            Value<String?> singleValueId = const Value.absent(),
            Value<String> familyId = const Value.absent(),
            Value<String?> memberId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FamilyAnswerCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            questionId: questionId,
            valueInt: valueInt,
            valueFloat: valueFloat,
            valueBool: valueBool,
            valueDate: valueDate,
            valueTime: valueTime,
            valueDatetime: valueDatetime,
            valueText: valueText,
            singleValueId: singleValueId,
            familyId: familyId,
            memberId: memberId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String questionId,
            Value<int?> valueInt = const Value.absent(),
            Value<double?> valueFloat = const Value.absent(),
            Value<bool?> valueBool = const Value.absent(),
            Value<DateTime?> valueDate = const Value.absent(),
            Value<String?> valueTime = const Value.absent(),
            Value<DateTime?> valueDatetime = const Value.absent(),
            Value<String?> valueText = const Value.absent(),
            Value<String?> singleValueId = const Value.absent(),
            required String familyId,
            Value<String?> memberId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FamilyAnswerCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            questionId: questionId,
            valueInt: valueInt,
            valueFloat: valueFloat,
            valueBool: valueBool,
            valueDate: valueDate,
            valueTime: valueTime,
            valueDatetime: valueDatetime,
            valueText: valueText,
            singleValueId: singleValueId,
            familyId: familyId,
            memberId: memberId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FamilyAnswerTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FamilyAnswerTable,
    FamilyAnswersData,
    $$FamilyAnswerTableFilterComposer,
    $$FamilyAnswerTableOrderingComposer,
    $$FamilyAnswerTableAnnotationComposer,
    $$FamilyAnswerTableCreateCompanionBuilder,
    $$FamilyAnswerTableUpdateCompanionBuilder,
    (
      FamilyAnswersData,
      BaseReferences<_$AppDatabase, $FamilyAnswerTable, FamilyAnswersData>
    ),
    FamilyAnswersData,
    PrefetchHooks Function()>;
typedef $$MultipleAnswerQuestionTableCreateCompanionBuilder
    = MultipleAnswerQuestionCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String familyAnswerId,
  required String answerItemId,
  Value<int> rowid,
});
typedef $$MultipleAnswerQuestionTableUpdateCompanionBuilder
    = MultipleAnswerQuestionCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> familyAnswerId,
  Value<String> answerItemId,
  Value<int> rowid,
});

class $$MultipleAnswerQuestionTableFilterComposer
    extends Composer<_$AppDatabase, $MultipleAnswerQuestionTable> {
  $$MultipleAnswerQuestionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familyAnswerId => $composableBuilder(
      column: $table.familyAnswerId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answerItemId => $composableBuilder(
      column: $table.answerItemId, builder: (column) => ColumnFilters(column));
}

class $$MultipleAnswerQuestionTableOrderingComposer
    extends Composer<_$AppDatabase, $MultipleAnswerQuestionTable> {
  $$MultipleAnswerQuestionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyAnswerId => $composableBuilder(
      column: $table.familyAnswerId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answerItemId => $composableBuilder(
      column: $table.answerItemId,
      builder: (column) => ColumnOrderings(column));
}

class $$MultipleAnswerQuestionTableAnnotationComposer
    extends Composer<_$AppDatabase, $MultipleAnswerQuestionTable> {
  $$MultipleAnswerQuestionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get familyAnswerId => $composableBuilder(
      column: $table.familyAnswerId, builder: (column) => column);

  GeneratedColumn<String> get answerItemId => $composableBuilder(
      column: $table.answerItemId, builder: (column) => column);
}

class $$MultipleAnswerQuestionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MultipleAnswerQuestionTable,
    MultiAnswerData,
    $$MultipleAnswerQuestionTableFilterComposer,
    $$MultipleAnswerQuestionTableOrderingComposer,
    $$MultipleAnswerQuestionTableAnnotationComposer,
    $$MultipleAnswerQuestionTableCreateCompanionBuilder,
    $$MultipleAnswerQuestionTableUpdateCompanionBuilder,
    (
      MultiAnswerData,
      BaseReferences<_$AppDatabase, $MultipleAnswerQuestionTable,
          MultiAnswerData>
    ),
    MultiAnswerData,
    PrefetchHooks Function()> {
  $$MultipleAnswerQuestionTableTableManager(
      _$AppDatabase db, $MultipleAnswerQuestionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MultipleAnswerQuestionTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$MultipleAnswerQuestionTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MultipleAnswerQuestionTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> familyAnswerId = const Value.absent(),
            Value<String> answerItemId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MultipleAnswerQuestionCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            familyAnswerId: familyAnswerId,
            answerItemId: answerItemId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String familyAnswerId,
            required String answerItemId,
            Value<int> rowid = const Value.absent(),
          }) =>
              MultipleAnswerQuestionCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            familyAnswerId: familyAnswerId,
            answerItemId: answerItemId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MultipleAnswerQuestionTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $MultipleAnswerQuestionTable,
        MultiAnswerData,
        $$MultipleAnswerQuestionTableFilterComposer,
        $$MultipleAnswerQuestionTableOrderingComposer,
        $$MultipleAnswerQuestionTableAnnotationComposer,
        $$MultipleAnswerQuestionTableCreateCompanionBuilder,
        $$MultipleAnswerQuestionTableUpdateCompanionBuilder,
        (
          MultiAnswerData,
          BaseReferences<_$AppDatabase, $MultipleAnswerQuestionTable,
              MultiAnswerData>
        ),
        MultiAnswerData,
        PrefetchHooks Function()>;
typedef $$RelationsTableCreateCompanionBuilder = RelationsCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$RelationsTableUpdateCompanionBuilder = RelationsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$RelationsTableFilterComposer
    extends Composer<_$AppDatabase, $RelationsTable> {
  $$RelationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$RelationsTableOrderingComposer
    extends Composer<_$AppDatabase, $RelationsTable> {
  $$RelationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$RelationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RelationsTable> {
  $$RelationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$RelationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RelationsTable,
    RelationsData,
    $$RelationsTableFilterComposer,
    $$RelationsTableOrderingComposer,
    $$RelationsTableAnnotationComposer,
    $$RelationsTableCreateCompanionBuilder,
    $$RelationsTableUpdateCompanionBuilder,
    (
      RelationsData,
      BaseReferences<_$AppDatabase, $RelationsTable, RelationsData>
    ),
    RelationsData,
    PrefetchHooks Function()> {
  $$RelationsTableTableManager(_$AppDatabase db, $RelationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RelationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RelationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RelationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RelationsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              RelationsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RelationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RelationsTable,
    RelationsData,
    $$RelationsTableFilterComposer,
    $$RelationsTableOrderingComposer,
    $$RelationsTableAnnotationComposer,
    $$RelationsTableCreateCompanionBuilder,
    $$RelationsTableUpdateCompanionBuilder,
    (
      RelationsData,
      BaseReferences<_$AppDatabase, $RelationsTable, RelationsData>
    ),
    RelationsData,
    PrefetchHooks Function()>;
typedef $$GendersTableCreateCompanionBuilder = GendersCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$GendersTableUpdateCompanionBuilder = GendersCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$GendersTableFilterComposer
    extends Composer<_$AppDatabase, $GendersTable> {
  $$GendersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$GendersTableOrderingComposer
    extends Composer<_$AppDatabase, $GendersTable> {
  $$GendersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$GendersTableAnnotationComposer
    extends Composer<_$AppDatabase, $GendersTable> {
  $$GendersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$GendersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GendersTable,
    GendersData,
    $$GendersTableFilterComposer,
    $$GendersTableOrderingComposer,
    $$GendersTableAnnotationComposer,
    $$GendersTableCreateCompanionBuilder,
    $$GendersTableUpdateCompanionBuilder,
    (GendersData, BaseReferences<_$AppDatabase, $GendersTable, GendersData>),
    GendersData,
    PrefetchHooks Function()> {
  $$GendersTableTableManager(_$AppDatabase db, $GendersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GendersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GendersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GendersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GendersCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GendersCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GendersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GendersTable,
    GendersData,
    $$GendersTableFilterComposer,
    $$GendersTableOrderingComposer,
    $$GendersTableAnnotationComposer,
    $$GendersTableCreateCompanionBuilder,
    $$GendersTableUpdateCompanionBuilder,
    (GendersData, BaseReferences<_$AppDatabase, $GendersTable, GendersData>),
    GendersData,
    PrefetchHooks Function()>;
typedef $$MaritalStatusTableCreateCompanionBuilder = MaritalStatusCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  required String code,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$MaritalStatusTableUpdateCompanionBuilder = MaritalStatusCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<String> code,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$MaritalStatusTableFilterComposer
    extends Composer<_$AppDatabase, $MaritalStatusTable> {
  $$MaritalStatusTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$MaritalStatusTableOrderingComposer
    extends Composer<_$AppDatabase, $MaritalStatusTable> {
  $$MaritalStatusTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$MaritalStatusTableAnnotationComposer
    extends Composer<_$AppDatabase, $MaritalStatusTable> {
  $$MaritalStatusTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$MaritalStatusTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MaritalStatusTable,
    MaritalStatusesData,
    $$MaritalStatusTableFilterComposer,
    $$MaritalStatusTableOrderingComposer,
    $$MaritalStatusTableAnnotationComposer,
    $$MaritalStatusTableCreateCompanionBuilder,
    $$MaritalStatusTableUpdateCompanionBuilder,
    (
      MaritalStatusesData,
      BaseReferences<_$AppDatabase, $MaritalStatusTable, MaritalStatusesData>
    ),
    MaritalStatusesData,
    PrefetchHooks Function()> {
  $$MaritalStatusTableTableManager(_$AppDatabase db, $MaritalStatusTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaritalStatusTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaritalStatusTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaritalStatusTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MaritalStatusCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            code: code,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            required String code,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MaritalStatusCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            code: code,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaritalStatusTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MaritalStatusTable,
    MaritalStatusesData,
    $$MaritalStatusTableFilterComposer,
    $$MaritalStatusTableOrderingComposer,
    $$MaritalStatusTableAnnotationComposer,
    $$MaritalStatusTableCreateCompanionBuilder,
    $$MaritalStatusTableUpdateCompanionBuilder,
    (
      MaritalStatusesData,
      BaseReferences<_$AppDatabase, $MaritalStatusTable, MaritalStatusesData>
    ),
    MaritalStatusesData,
    PrefetchHooks Function()>;
typedef $$JobsTableCreateCompanionBuilder = JobsCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$JobsTableUpdateCompanionBuilder = JobsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$JobsTableFilterComposer extends Composer<_$AppDatabase, $JobsTable> {
  $$JobsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$JobsTableOrderingComposer extends Composer<_$AppDatabase, $JobsTable> {
  $$JobsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$JobsTableAnnotationComposer
    extends Composer<_$AppDatabase, $JobsTable> {
  $$JobsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$JobsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $JobsTable,
    JobsData,
    $$JobsTableFilterComposer,
    $$JobsTableOrderingComposer,
    $$JobsTableAnnotationComposer,
    $$JobsTableCreateCompanionBuilder,
    $$JobsTableUpdateCompanionBuilder,
    (JobsData, BaseReferences<_$AppDatabase, $JobsTable, JobsData>),
    JobsData,
    PrefetchHooks Function()> {
  $$JobsTableTableManager(_$AppDatabase db, $JobsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JobsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JobsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JobsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              JobsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              JobsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$JobsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $JobsTable,
    JobsData,
    $$JobsTableFilterComposer,
    $$JobsTableOrderingComposer,
    $$JobsTableAnnotationComposer,
    $$JobsTableCreateCompanionBuilder,
    $$JobsTableUpdateCompanionBuilder,
    (JobsData, BaseReferences<_$AppDatabase, $JobsTable, JobsData>),
    JobsData,
    PrefetchHooks Function()>;
typedef $$NationalitiesTableCreateCompanionBuilder = NationalitiesCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$NationalitiesTableUpdateCompanionBuilder = NationalitiesCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$NationalitiesTableFilterComposer
    extends Composer<_$AppDatabase, $NationalitiesTable> {
  $$NationalitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$NationalitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $NationalitiesTable> {
  $$NationalitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$NationalitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NationalitiesTable> {
  $$NationalitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$NationalitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NationalitiesTable,
    NationalitiesData,
    $$NationalitiesTableFilterComposer,
    $$NationalitiesTableOrderingComposer,
    $$NationalitiesTableAnnotationComposer,
    $$NationalitiesTableCreateCompanionBuilder,
    $$NationalitiesTableUpdateCompanionBuilder,
    (
      NationalitiesData,
      BaseReferences<_$AppDatabase, $NationalitiesTable, NationalitiesData>
    ),
    NationalitiesData,
    PrefetchHooks Function()> {
  $$NationalitiesTableTableManager(_$AppDatabase db, $NationalitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NationalitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NationalitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NationalitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NationalitiesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              NationalitiesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NationalitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NationalitiesTable,
    NationalitiesData,
    $$NationalitiesTableFilterComposer,
    $$NationalitiesTableOrderingComposer,
    $$NationalitiesTableAnnotationComposer,
    $$NationalitiesTableCreateCompanionBuilder,
    $$NationalitiesTableUpdateCompanionBuilder,
    (
      NationalitiesData,
      BaseReferences<_$AppDatabase, $NationalitiesTable, NationalitiesData>
    ),
    NationalitiesData,
    PrefetchHooks Function()>;
typedef $$EducationLevelsTableCreateCompanionBuilder = EducationLevelsCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$EducationLevelsTableUpdateCompanionBuilder = EducationLevelsCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$EducationLevelsTableFilterComposer
    extends Composer<_$AppDatabase, $EducationLevelsTable> {
  $$EducationLevelsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$EducationLevelsTableOrderingComposer
    extends Composer<_$AppDatabase, $EducationLevelsTable> {
  $$EducationLevelsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$EducationLevelsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EducationLevelsTable> {
  $$EducationLevelsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$EducationLevelsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EducationLevelsTable,
    EducationLevelsData,
    $$EducationLevelsTableFilterComposer,
    $$EducationLevelsTableOrderingComposer,
    $$EducationLevelsTableAnnotationComposer,
    $$EducationLevelsTableCreateCompanionBuilder,
    $$EducationLevelsTableUpdateCompanionBuilder,
    (
      EducationLevelsData,
      BaseReferences<_$AppDatabase, $EducationLevelsTable, EducationLevelsData>
    ),
    EducationLevelsData,
    PrefetchHooks Function()> {
  $$EducationLevelsTableTableManager(
      _$AppDatabase db, $EducationLevelsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EducationLevelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EducationLevelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EducationLevelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EducationLevelsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              EducationLevelsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EducationLevelsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EducationLevelsTable,
    EducationLevelsData,
    $$EducationLevelsTableFilterComposer,
    $$EducationLevelsTableOrderingComposer,
    $$EducationLevelsTableAnnotationComposer,
    $$EducationLevelsTableCreateCompanionBuilder,
    $$EducationLevelsTableUpdateCompanionBuilder,
    (
      EducationLevelsData,
      BaseReferences<_$AppDatabase, $EducationLevelsTable, EducationLevelsData>
    ),
    EducationLevelsData,
    PrefetchHooks Function()>;
typedef $$EducationStatusesTableCreateCompanionBuilder
    = EducationStatusesCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$EducationStatusesTableUpdateCompanionBuilder
    = EducationStatusesCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$EducationStatusesTableFilterComposer
    extends Composer<_$AppDatabase, $EducationStatusesTable> {
  $$EducationStatusesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$EducationStatusesTableOrderingComposer
    extends Composer<_$AppDatabase, $EducationStatusesTable> {
  $$EducationStatusesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$EducationStatusesTableAnnotationComposer
    extends Composer<_$AppDatabase, $EducationStatusesTable> {
  $$EducationStatusesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$EducationStatusesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EducationStatusesTable,
    EducationStatusesData,
    $$EducationStatusesTableFilterComposer,
    $$EducationStatusesTableOrderingComposer,
    $$EducationStatusesTableAnnotationComposer,
    $$EducationStatusesTableCreateCompanionBuilder,
    $$EducationStatusesTableUpdateCompanionBuilder,
    (
      EducationStatusesData,
      BaseReferences<_$AppDatabase, $EducationStatusesTable,
          EducationStatusesData>
    ),
    EducationStatusesData,
    PrefetchHooks Function()> {
  $$EducationStatusesTableTableManager(
      _$AppDatabase db, $EducationStatusesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EducationStatusesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EducationStatusesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EducationStatusesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EducationStatusesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              EducationStatusesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EducationStatusesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EducationStatusesTable,
    EducationStatusesData,
    $$EducationStatusesTableFilterComposer,
    $$EducationStatusesTableOrderingComposer,
    $$EducationStatusesTableAnnotationComposer,
    $$EducationStatusesTableCreateCompanionBuilder,
    $$EducationStatusesTableUpdateCompanionBuilder,
    (
      EducationStatusesData,
      BaseReferences<_$AppDatabase, $EducationStatusesTable,
          EducationStatusesData>
    ),
    EducationStatusesData,
    PrefetchHooks Function()>;
typedef $$DocumentTypesTableCreateCompanionBuilder = DocumentTypesCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<bool> hasCriteria,
  Value<String?> criteria,
  required String code,
  Value<String?> forWhoId,
  Value<int> rowid,
});
typedef $$DocumentTypesTableUpdateCompanionBuilder = DocumentTypesCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<bool> hasCriteria,
  Value<String?> criteria,
  Value<String> code,
  Value<String?> forWhoId,
  Value<int> rowid,
});

class $$DocumentTypesTableFilterComposer
    extends Composer<_$AppDatabase, $DocumentTypesTable> {
  $$DocumentTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasCriteria => $composableBuilder(
      column: $table.hasCriteria, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get criteria => $composableBuilder(
      column: $table.criteria, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get forWhoId => $composableBuilder(
      column: $table.forWhoId, builder: (column) => ColumnFilters(column));
}

class $$DocumentTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $DocumentTypesTable> {
  $$DocumentTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasCriteria => $composableBuilder(
      column: $table.hasCriteria, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get criteria => $composableBuilder(
      column: $table.criteria, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get forWhoId => $composableBuilder(
      column: $table.forWhoId, builder: (column) => ColumnOrderings(column));
}

class $$DocumentTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocumentTypesTable> {
  $$DocumentTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<bool> get hasCriteria => $composableBuilder(
      column: $table.hasCriteria, builder: (column) => column);

  GeneratedColumn<String> get criteria =>
      $composableBuilder(column: $table.criteria, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get forWhoId =>
      $composableBuilder(column: $table.forWhoId, builder: (column) => column);
}

class $$DocumentTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DocumentTypesTable,
    DocumentTypesData,
    $$DocumentTypesTableFilterComposer,
    $$DocumentTypesTableOrderingComposer,
    $$DocumentTypesTableAnnotationComposer,
    $$DocumentTypesTableCreateCompanionBuilder,
    $$DocumentTypesTableUpdateCompanionBuilder,
    (
      DocumentTypesData,
      BaseReferences<_$AppDatabase, $DocumentTypesTable, DocumentTypesData>
    ),
    DocumentTypesData,
    PrefetchHooks Function()> {
  $$DocumentTypesTableTableManager(_$AppDatabase db, $DocumentTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocumentTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocumentTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocumentTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<bool> hasCriteria = const Value.absent(),
            Value<String?> criteria = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String?> forWhoId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DocumentTypesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            hasCriteria: hasCriteria,
            criteria: criteria,
            code: code,
            forWhoId: forWhoId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<bool> hasCriteria = const Value.absent(),
            Value<String?> criteria = const Value.absent(),
            required String code,
            Value<String?> forWhoId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DocumentTypesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            hasCriteria: hasCriteria,
            criteria: criteria,
            code: code,
            forWhoId: forWhoId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DocumentTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DocumentTypesTable,
    DocumentTypesData,
    $$DocumentTypesTableFilterComposer,
    $$DocumentTypesTableOrderingComposer,
    $$DocumentTypesTableAnnotationComposer,
    $$DocumentTypesTableCreateCompanionBuilder,
    $$DocumentTypesTableUpdateCompanionBuilder,
    (
      DocumentTypesData,
      BaseReferences<_$AppDatabase, $DocumentTypesTable, DocumentTypesData>
    ),
    DocumentTypesData,
    PrefetchHooks Function()>;
typedef $$RequiredServicesTableCreateCompanionBuilder
    = RequiredServicesCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$RequiredServicesTableUpdateCompanionBuilder
    = RequiredServicesCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$RequiredServicesTableFilterComposer
    extends Composer<_$AppDatabase, $RequiredServicesTable> {
  $$RequiredServicesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$RequiredServicesTableOrderingComposer
    extends Composer<_$AppDatabase, $RequiredServicesTable> {
  $$RequiredServicesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$RequiredServicesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RequiredServicesTable> {
  $$RequiredServicesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$RequiredServicesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RequiredServicesTable,
    RequiredServicesData,
    $$RequiredServicesTableFilterComposer,
    $$RequiredServicesTableOrderingComposer,
    $$RequiredServicesTableAnnotationComposer,
    $$RequiredServicesTableCreateCompanionBuilder,
    $$RequiredServicesTableUpdateCompanionBuilder,
    (
      RequiredServicesData,
      BaseReferences<_$AppDatabase, $RequiredServicesTable,
          RequiredServicesData>
    ),
    RequiredServicesData,
    PrefetchHooks Function()> {
  $$RequiredServicesTableTableManager(
      _$AppDatabase db, $RequiredServicesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RequiredServicesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RequiredServicesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RequiredServicesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RequiredServicesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              RequiredServicesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RequiredServicesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RequiredServicesTable,
    RequiredServicesData,
    $$RequiredServicesTableFilterComposer,
    $$RequiredServicesTableOrderingComposer,
    $$RequiredServicesTableAnnotationComposer,
    $$RequiredServicesTableCreateCompanionBuilder,
    $$RequiredServicesTableUpdateCompanionBuilder,
    (
      RequiredServicesData,
      BaseReferences<_$AppDatabase, $RequiredServicesTable,
          RequiredServicesData>
    ),
    RequiredServicesData,
    PrefetchHooks Function()>;
typedef $$ServiceStatusesTableCreateCompanionBuilder = ServiceStatusesCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$ServiceStatusesTableUpdateCompanionBuilder = ServiceStatusesCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$ServiceStatusesTableFilterComposer
    extends Composer<_$AppDatabase, $ServiceStatusesTable> {
  $$ServiceStatusesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$ServiceStatusesTableOrderingComposer
    extends Composer<_$AppDatabase, $ServiceStatusesTable> {
  $$ServiceStatusesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$ServiceStatusesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ServiceStatusesTable> {
  $$ServiceStatusesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$ServiceStatusesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ServiceStatusesTable,
    ServiceStatusesData,
    $$ServiceStatusesTableFilterComposer,
    $$ServiceStatusesTableOrderingComposer,
    $$ServiceStatusesTableAnnotationComposer,
    $$ServiceStatusesTableCreateCompanionBuilder,
    $$ServiceStatusesTableUpdateCompanionBuilder,
    (
      ServiceStatusesData,
      BaseReferences<_$AppDatabase, $ServiceStatusesTable, ServiceStatusesData>
    ),
    ServiceStatusesData,
    PrefetchHooks Function()> {
  $$ServiceStatusesTableTableManager(
      _$AppDatabase db, $ServiceStatusesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ServiceStatusesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ServiceStatusesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ServiceStatusesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ServiceStatusesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              ServiceStatusesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ServiceStatusesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ServiceStatusesTable,
    ServiceStatusesData,
    $$ServiceStatusesTableFilterComposer,
    $$ServiceStatusesTableOrderingComposer,
    $$ServiceStatusesTableAnnotationComposer,
    $$ServiceStatusesTableCreateCompanionBuilder,
    $$ServiceStatusesTableUpdateCompanionBuilder,
    (
      ServiceStatusesData,
      BaseReferences<_$AppDatabase, $ServiceStatusesTable, ServiceStatusesData>
    ),
    ServiceStatusesData,
    PrefetchHooks Function()>;
typedef $$CenterTypesTableCreateCompanionBuilder = CenterTypesCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$CenterTypesTableUpdateCompanionBuilder = CenterTypesCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$CenterTypesTableFilterComposer
    extends Composer<_$AppDatabase, $CenterTypesTable> {
  $$CenterTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$CenterTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $CenterTypesTable> {
  $$CenterTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$CenterTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CenterTypesTable> {
  $$CenterTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$CenterTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CenterTypesTable,
    CenterTypesData,
    $$CenterTypesTableFilterComposer,
    $$CenterTypesTableOrderingComposer,
    $$CenterTypesTableAnnotationComposer,
    $$CenterTypesTableCreateCompanionBuilder,
    $$CenterTypesTableUpdateCompanionBuilder,
    (
      CenterTypesData,
      BaseReferences<_$AppDatabase, $CenterTypesTable, CenterTypesData>
    ),
    CenterTypesData,
    PrefetchHooks Function()> {
  $$CenterTypesTableTableManager(_$AppDatabase db, $CenterTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CenterTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CenterTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CenterTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CenterTypesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              CenterTypesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CenterTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CenterTypesTable,
    CenterTypesData,
    $$CenterTypesTableFilterComposer,
    $$CenterTypesTableOrderingComposer,
    $$CenterTypesTableAnnotationComposer,
    $$CenterTypesTableCreateCompanionBuilder,
    $$CenterTypesTableUpdateCompanionBuilder,
    (
      CenterTypesData,
      BaseReferences<_$AppDatabase, $CenterTypesTable, CenterTypesData>
    ),
    CenterTypesData,
    PrefetchHooks Function()>;
typedef $$ModalitiesTableCreateCompanionBuilder = ModalitiesCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$ModalitiesTableUpdateCompanionBuilder = ModalitiesCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$ModalitiesTableFilterComposer
    extends Composer<_$AppDatabase, $ModalitiesTable> {
  $$ModalitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$ModalitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $ModalitiesTable> {
  $$ModalitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$ModalitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ModalitiesTable> {
  $$ModalitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$ModalitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ModalitiesTable,
    ModalitiesData,
    $$ModalitiesTableFilterComposer,
    $$ModalitiesTableOrderingComposer,
    $$ModalitiesTableAnnotationComposer,
    $$ModalitiesTableCreateCompanionBuilder,
    $$ModalitiesTableUpdateCompanionBuilder,
    (
      ModalitiesData,
      BaseReferences<_$AppDatabase, $ModalitiesTable, ModalitiesData>
    ),
    ModalitiesData,
    PrefetchHooks Function()> {
  $$ModalitiesTableTableManager(_$AppDatabase db, $ModalitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ModalitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ModalitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ModalitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ModalitiesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              ModalitiesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ModalitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ModalitiesTable,
    ModalitiesData,
    $$ModalitiesTableFilterComposer,
    $$ModalitiesTableOrderingComposer,
    $$ModalitiesTableAnnotationComposer,
    $$ModalitiesTableCreateCompanionBuilder,
    $$ModalitiesTableUpdateCompanionBuilder,
    (
      ModalitiesData,
      BaseReferences<_$AppDatabase, $ModalitiesTable, ModalitiesData>
    ),
    ModalitiesData,
    PrefetchHooks Function()>;
typedef $$ForWhosTableCreateCompanionBuilder = ForWhosCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$ForWhosTableUpdateCompanionBuilder = ForWhosCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$ForWhosTableFilterComposer
    extends Composer<_$AppDatabase, $ForWhosTable> {
  $$ForWhosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$ForWhosTableOrderingComposer
    extends Composer<_$AppDatabase, $ForWhosTable> {
  $$ForWhosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$ForWhosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ForWhosTable> {
  $$ForWhosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$ForWhosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ForWhosTable,
    ForWhosData,
    $$ForWhosTableFilterComposer,
    $$ForWhosTableOrderingComposer,
    $$ForWhosTableAnnotationComposer,
    $$ForWhosTableCreateCompanionBuilder,
    $$ForWhosTableUpdateCompanionBuilder,
    (ForWhosData, BaseReferences<_$AppDatabase, $ForWhosTable, ForWhosData>),
    ForWhosData,
    PrefetchHooks Function()> {
  $$ForWhosTableTableManager(_$AppDatabase db, $ForWhosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ForWhosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ForWhosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ForWhosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ForWhosCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ForWhosCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ForWhosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ForWhosTable,
    ForWhosData,
    $$ForWhosTableFilterComposer,
    $$ForWhosTableOrderingComposer,
    $$ForWhosTableAnnotationComposer,
    $$ForWhosTableCreateCompanionBuilder,
    $$ForWhosTableUpdateCompanionBuilder,
    (ForWhosData, BaseReferences<_$AppDatabase, $ForWhosTable, ForWhosData>),
    ForWhosData,
    PrefetchHooks Function()>;
typedef $$QuestionTypesTableCreateCompanionBuilder = QuestionTypesCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$QuestionTypesTableUpdateCompanionBuilder = QuestionTypesCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$QuestionTypesTableFilterComposer
    extends Composer<_$AppDatabase, $QuestionTypesTable> {
  $$QuestionTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$QuestionTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestionTypesTable> {
  $$QuestionTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$QuestionTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestionTypesTable> {
  $$QuestionTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$QuestionTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuestionTypesTable,
    QuestionTypesData,
    $$QuestionTypesTableFilterComposer,
    $$QuestionTypesTableOrderingComposer,
    $$QuestionTypesTableAnnotationComposer,
    $$QuestionTypesTableCreateCompanionBuilder,
    $$QuestionTypesTableUpdateCompanionBuilder,
    (
      QuestionTypesData,
      BaseReferences<_$AppDatabase, $QuestionTypesTable, QuestionTypesData>
    ),
    QuestionTypesData,
    PrefetchHooks Function()> {
  $$QuestionTypesTableTableManager(_$AppDatabase db, $QuestionTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestionTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestionTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestionTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionTypesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionTypesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuestionTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QuestionTypesTable,
    QuestionTypesData,
    $$QuestionTypesTableFilterComposer,
    $$QuestionTypesTableOrderingComposer,
    $$QuestionTypesTableAnnotationComposer,
    $$QuestionTypesTableCreateCompanionBuilder,
    $$QuestionTypesTableUpdateCompanionBuilder,
    (
      QuestionTypesData,
      BaseReferences<_$AppDatabase, $QuestionTypesTable, QuestionTypesData>
    ),
    QuestionTypesData,
    PrefetchHooks Function()>;
typedef $$SectionsTableCreateCompanionBuilder = SectionsCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$SectionsTableUpdateCompanionBuilder = SectionsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$SectionsTableFilterComposer
    extends Composer<_$AppDatabase, $SectionsTable> {
  $$SectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$SectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $SectionsTable> {
  $$SectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$SectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SectionsTable> {
  $$SectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$SectionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectionsTable,
    SectionsData,
    $$SectionsTableFilterComposer,
    $$SectionsTableOrderingComposer,
    $$SectionsTableAnnotationComposer,
    $$SectionsTableCreateCompanionBuilder,
    $$SectionsTableUpdateCompanionBuilder,
    (SectionsData, BaseReferences<_$AppDatabase, $SectionsTable, SectionsData>),
    SectionsData,
    PrefetchHooks Function()> {
  $$SectionsTableTableManager(_$AppDatabase db, $SectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SectionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SectionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectionsTable,
    SectionsData,
    $$SectionsTableFilterComposer,
    $$SectionsTableOrderingComposer,
    $$SectionsTableAnnotationComposer,
    $$SectionsTableCreateCompanionBuilder,
    $$SectionsTableUpdateCompanionBuilder,
    (SectionsData, BaseReferences<_$AppDatabase, $SectionsTable, SectionsData>),
    SectionsData,
    PrefetchHooks Function()>;
typedef $$AnswerSetsTableCreateCompanionBuilder = AnswerSetsCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$AnswerSetsTableUpdateCompanionBuilder = AnswerSetsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$AnswerSetsTableFilterComposer
    extends Composer<_$AppDatabase, $AnswerSetsTable> {
  $$AnswerSetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$AnswerSetsTableOrderingComposer
    extends Composer<_$AppDatabase, $AnswerSetsTable> {
  $$AnswerSetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$AnswerSetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnswerSetsTable> {
  $$AnswerSetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$AnswerSetsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnswerSetsTable,
    AnswerSetsData,
    $$AnswerSetsTableFilterComposer,
    $$AnswerSetsTableOrderingComposer,
    $$AnswerSetsTableAnnotationComposer,
    $$AnswerSetsTableCreateCompanionBuilder,
    $$AnswerSetsTableUpdateCompanionBuilder,
    (
      AnswerSetsData,
      BaseReferences<_$AppDatabase, $AnswerSetsTable, AnswerSetsData>
    ),
    AnswerSetsData,
    PrefetchHooks Function()> {
  $$AnswerSetsTableTableManager(_$AppDatabase db, $AnswerSetsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnswerSetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnswerSetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnswerSetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnswerSetsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnswerSetsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AnswerSetsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AnswerSetsTable,
    AnswerSetsData,
    $$AnswerSetsTableFilterComposer,
    $$AnswerSetsTableOrderingComposer,
    $$AnswerSetsTableAnnotationComposer,
    $$AnswerSetsTableCreateCompanionBuilder,
    $$AnswerSetsTableUpdateCompanionBuilder,
    (
      AnswerSetsData,
      BaseReferences<_$AppDatabase, $AnswerSetsTable, AnswerSetsData>
    ),
    AnswerSetsData,
    PrefetchHooks Function()>;
typedef $$AnswerItemsTableCreateCompanionBuilder = AnswerItemsCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String answerSetId,
  required String code,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$AnswerItemsTableUpdateCompanionBuilder = AnswerItemsCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> answerSetId,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$AnswerItemsTableFilterComposer
    extends Composer<_$AppDatabase, $AnswerItemsTable> {
  $$AnswerItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$AnswerItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $AnswerItemsTable> {
  $$AnswerItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$AnswerItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnswerItemsTable> {
  $$AnswerItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$AnswerItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnswerItemsTable,
    AnswerItemsData,
    $$AnswerItemsTableFilterComposer,
    $$AnswerItemsTableOrderingComposer,
    $$AnswerItemsTableAnnotationComposer,
    $$AnswerItemsTableCreateCompanionBuilder,
    $$AnswerItemsTableUpdateCompanionBuilder,
    (
      AnswerItemsData,
      BaseReferences<_$AppDatabase, $AnswerItemsTable, AnswerItemsData>
    ),
    AnswerItemsData,
    PrefetchHooks Function()> {
  $$AnswerItemsTableTableManager(_$AppDatabase db, $AnswerItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnswerItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnswerItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnswerItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> answerSetId = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnswerItemsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            answerSetId: answerSetId,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String answerSetId,
            required String code,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnswerItemsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            answerSetId: answerSetId,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AnswerItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AnswerItemsTable,
    AnswerItemsData,
    $$AnswerItemsTableFilterComposer,
    $$AnswerItemsTableOrderingComposer,
    $$AnswerItemsTableAnnotationComposer,
    $$AnswerItemsTableCreateCompanionBuilder,
    $$AnswerItemsTableUpdateCompanionBuilder,
    (
      AnswerItemsData,
      BaseReferences<_$AppDatabase, $AnswerItemsTable, AnswerItemsData>
    ),
    AnswerItemsData,
    PrefetchHooks Function()>;
typedef $$QuestionsTableCreateCompanionBuilder = QuestionsCompanion Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String code,
  required String titleAr,
  required String titleEng,
  required String sectionId,
  Value<String?> questionTypeId,
  Value<String?> forWhoId,
  Value<String?> answerSetId,
  Value<bool> required,
  Value<int> position,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$QuestionsTableUpdateCompanionBuilder = QuestionsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> code,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<String> sectionId,
  Value<String?> questionTypeId,
  Value<String?> forWhoId,
  Value<String?> answerSetId,
  Value<bool> required,
  Value<int> position,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$QuestionsTableFilterComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sectionId => $composableBuilder(
      column: $table.sectionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get questionTypeId => $composableBuilder(
      column: $table.questionTypeId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get forWhoId => $composableBuilder(
      column: $table.forWhoId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get required => $composableBuilder(
      column: $table.required, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get position => $composableBuilder(
      column: $table.position, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));
}

class $$QuestionsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sectionId => $composableBuilder(
      column: $table.sectionId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get questionTypeId => $composableBuilder(
      column: $table.questionTypeId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get forWhoId => $composableBuilder(
      column: $table.forWhoId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get required => $composableBuilder(
      column: $table.required, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get position => $composableBuilder(
      column: $table.position, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$QuestionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<String> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get questionTypeId => $composableBuilder(
      column: $table.questionTypeId, builder: (column) => column);

  GeneratedColumn<String> get forWhoId =>
      $composableBuilder(column: $table.forWhoId, builder: (column) => column);

  GeneratedColumn<String> get answerSetId => $composableBuilder(
      column: $table.answerSetId, builder: (column) => column);

  GeneratedColumn<bool> get required =>
      $composableBuilder(column: $table.required, builder: (column) => column);

  GeneratedColumn<int> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$QuestionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuestionsTable,
    QuestionsData,
    $$QuestionsTableFilterComposer,
    $$QuestionsTableOrderingComposer,
    $$QuestionsTableAnnotationComposer,
    $$QuestionsTableCreateCompanionBuilder,
    $$QuestionsTableUpdateCompanionBuilder,
    (
      QuestionsData,
      BaseReferences<_$AppDatabase, $QuestionsTable, QuestionsData>
    ),
    QuestionsData,
    PrefetchHooks Function()> {
  $$QuestionsTableTableManager(_$AppDatabase db, $QuestionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<String> sectionId = const Value.absent(),
            Value<String?> questionTypeId = const Value.absent(),
            Value<String?> forWhoId = const Value.absent(),
            Value<String?> answerSetId = const Value.absent(),
            Value<bool> required = const Value.absent(),
            Value<int> position = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            sectionId: sectionId,
            questionTypeId: questionTypeId,
            forWhoId: forWhoId,
            answerSetId: answerSetId,
            required: required,
            position: position,
            isActive: isActive,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String code,
            required String titleAr,
            required String titleEng,
            required String sectionId,
            Value<String?> questionTypeId = const Value.absent(),
            Value<String?> forWhoId = const Value.absent(),
            Value<String?> answerSetId = const Value.absent(),
            Value<bool> required = const Value.absent(),
            Value<int> position = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            code: code,
            titleAr: titleAr,
            titleEng: titleEng,
            sectionId: sectionId,
            questionTypeId: questionTypeId,
            forWhoId: forWhoId,
            answerSetId: answerSetId,
            required: required,
            position: position,
            isActive: isActive,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuestionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QuestionsTable,
    QuestionsData,
    $$QuestionsTableFilterComposer,
    $$QuestionsTableOrderingComposer,
    $$QuestionsTableAnnotationComposer,
    $$QuestionsTableCreateCompanionBuilder,
    $$QuestionsTableUpdateCompanionBuilder,
    (
      QuestionsData,
      BaseReferences<_$AppDatabase, $QuestionsTable, QuestionsData>
    ),
    QuestionsData,
    PrefetchHooks Function()>;
typedef $$WgqQuestionsTableCreateCompanionBuilder = WgqQuestionsCompanion
    Function({
  required String id,
  required DateTime createdAt,
  required DateTime updatedAt,
  required String titleAr,
  required String titleEng,
  Value<bool> isActive,
  required String code,
  Value<int> rowid,
});
typedef $$WgqQuestionsTableUpdateCompanionBuilder = WgqQuestionsCompanion
    Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String> titleAr,
  Value<String> titleEng,
  Value<bool> isActive,
  Value<String> code,
  Value<int> rowid,
});

class $$WgqQuestionsTableFilterComposer
    extends Composer<_$AppDatabase, $WgqQuestionsTable> {
  $$WgqQuestionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));
}

class $$WgqQuestionsTableOrderingComposer
    extends Composer<_$AppDatabase, $WgqQuestionsTable> {
  $$WgqQuestionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleAr => $composableBuilder(
      column: $table.titleAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEng => $composableBuilder(
      column: $table.titleEng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));
}

class $$WgqQuestionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WgqQuestionsTable> {
  $$WgqQuestionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<String> get titleEng =>
      $composableBuilder(column: $table.titleEng, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);
}

class $$WgqQuestionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WgqQuestionsTable,
    WgqQuestionsData,
    $$WgqQuestionsTableFilterComposer,
    $$WgqQuestionsTableOrderingComposer,
    $$WgqQuestionsTableAnnotationComposer,
    $$WgqQuestionsTableCreateCompanionBuilder,
    $$WgqQuestionsTableUpdateCompanionBuilder,
    (
      WgqQuestionsData,
      BaseReferences<_$AppDatabase, $WgqQuestionsTable, WgqQuestionsData>
    ),
    WgqQuestionsData,
    PrefetchHooks Function()> {
  $$WgqQuestionsTableTableManager(_$AppDatabase db, $WgqQuestionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WgqQuestionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WgqQuestionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WgqQuestionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String> titleAr = const Value.absent(),
            Value<String> titleEng = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WgqQuestionsCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime createdAt,
            required DateTime updatedAt,
            required String titleAr,
            required String titleEng,
            Value<bool> isActive = const Value.absent(),
            required String code,
            Value<int> rowid = const Value.absent(),
          }) =>
              WgqQuestionsCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            titleAr: titleAr,
            titleEng: titleEng,
            isActive: isActive,
            code: code,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$WgqQuestionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WgqQuestionsTable,
    WgqQuestionsData,
    $$WgqQuestionsTableFilterComposer,
    $$WgqQuestionsTableOrderingComposer,
    $$WgqQuestionsTableAnnotationComposer,
    $$WgqQuestionsTableCreateCompanionBuilder,
    $$WgqQuestionsTableUpdateCompanionBuilder,
    (
      WgqQuestionsData,
      BaseReferences<_$AppDatabase, $WgqQuestionsTable, WgqQuestionsData>
    ),
    WgqQuestionsData,
    PrefetchHooks Function()>;
typedef $$OutboxTableCreateCompanionBuilder = OutboxCompanion Function({
  Value<int> id,
  required String targetTable,
  required String op,
  required String rowId,
  required String payload,
  required DateTime queuedAt,
  Value<int> attempt,
  Value<String?> lastError,
});
typedef $$OutboxTableUpdateCompanionBuilder = OutboxCompanion Function({
  Value<int> id,
  Value<String> targetTable,
  Value<String> op,
  Value<String> rowId,
  Value<String> payload,
  Value<DateTime> queuedAt,
  Value<int> attempt,
  Value<String?> lastError,
});

class $$OutboxTableFilterComposer
    extends Composer<_$AppDatabase, $OutboxTable> {
  $$OutboxTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get op => $composableBuilder(
      column: $table.op, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rowId => $composableBuilder(
      column: $table.rowId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get queuedAt => $composableBuilder(
      column: $table.queuedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get attempt => $composableBuilder(
      column: $table.attempt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastError => $composableBuilder(
      column: $table.lastError, builder: (column) => ColumnFilters(column));
}

class $$OutboxTableOrderingComposer
    extends Composer<_$AppDatabase, $OutboxTable> {
  $$OutboxTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get op => $composableBuilder(
      column: $table.op, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rowId => $composableBuilder(
      column: $table.rowId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get queuedAt => $composableBuilder(
      column: $table.queuedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get attempt => $composableBuilder(
      column: $table.attempt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastError => $composableBuilder(
      column: $table.lastError, builder: (column) => ColumnOrderings(column));
}

class $$OutboxTableAnnotationComposer
    extends Composer<_$AppDatabase, $OutboxTable> {
  $$OutboxTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => column);

  GeneratedColumn<String> get op =>
      $composableBuilder(column: $table.op, builder: (column) => column);

  GeneratedColumn<String> get rowId =>
      $composableBuilder(column: $table.rowId, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get queuedAt =>
      $composableBuilder(column: $table.queuedAt, builder: (column) => column);

  GeneratedColumn<int> get attempt =>
      $composableBuilder(column: $table.attempt, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);
}

class $$OutboxTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OutboxTable,
    OutboxData,
    $$OutboxTableFilterComposer,
    $$OutboxTableOrderingComposer,
    $$OutboxTableAnnotationComposer,
    $$OutboxTableCreateCompanionBuilder,
    $$OutboxTableUpdateCompanionBuilder,
    (OutboxData, BaseReferences<_$AppDatabase, $OutboxTable, OutboxData>),
    OutboxData,
    PrefetchHooks Function()> {
  $$OutboxTableTableManager(_$AppDatabase db, $OutboxTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OutboxTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OutboxTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OutboxTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> targetTable = const Value.absent(),
            Value<String> op = const Value.absent(),
            Value<String> rowId = const Value.absent(),
            Value<String> payload = const Value.absent(),
            Value<DateTime> queuedAt = const Value.absent(),
            Value<int> attempt = const Value.absent(),
            Value<String?> lastError = const Value.absent(),
          }) =>
              OutboxCompanion(
            id: id,
            targetTable: targetTable,
            op: op,
            rowId: rowId,
            payload: payload,
            queuedAt: queuedAt,
            attempt: attempt,
            lastError: lastError,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String targetTable,
            required String op,
            required String rowId,
            required String payload,
            required DateTime queuedAt,
            Value<int> attempt = const Value.absent(),
            Value<String?> lastError = const Value.absent(),
          }) =>
              OutboxCompanion.insert(
            id: id,
            targetTable: targetTable,
            op: op,
            rowId: rowId,
            payload: payload,
            queuedAt: queuedAt,
            attempt: attempt,
            lastError: lastError,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OutboxTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OutboxTable,
    OutboxData,
    $$OutboxTableFilterComposer,
    $$OutboxTableOrderingComposer,
    $$OutboxTableAnnotationComposer,
    $$OutboxTableCreateCompanionBuilder,
    $$OutboxTableUpdateCompanionBuilder,
    (OutboxData, BaseReferences<_$AppDatabase, $OutboxTable, OutboxData>),
    OutboxData,
    PrefetchHooks Function()>;
typedef $$SyncCursorTableCreateCompanionBuilder = SyncCursorCompanion Function({
  required String cursorTable,
  Value<DateTime?> lastUpdatedAt,
  Value<int> rowid,
});
typedef $$SyncCursorTableUpdateCompanionBuilder = SyncCursorCompanion Function({
  Value<String> cursorTable,
  Value<DateTime?> lastUpdatedAt,
  Value<int> rowid,
});

class $$SyncCursorTableFilterComposer
    extends Composer<_$AppDatabase, $SyncCursorTable> {
  $$SyncCursorTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cursorTable => $composableBuilder(
      column: $table.cursorTable, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUpdatedAt => $composableBuilder(
      column: $table.lastUpdatedAt, builder: (column) => ColumnFilters(column));
}

class $$SyncCursorTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncCursorTable> {
  $$SyncCursorTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cursorTable => $composableBuilder(
      column: $table.cursorTable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUpdatedAt => $composableBuilder(
      column: $table.lastUpdatedAt,
      builder: (column) => ColumnOrderings(column));
}

class $$SyncCursorTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncCursorTable> {
  $$SyncCursorTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cursorTable => $composableBuilder(
      column: $table.cursorTable, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdatedAt => $composableBuilder(
      column: $table.lastUpdatedAt, builder: (column) => column);
}

class $$SyncCursorTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SyncCursorTable,
    SyncCursorData,
    $$SyncCursorTableFilterComposer,
    $$SyncCursorTableOrderingComposer,
    $$SyncCursorTableAnnotationComposer,
    $$SyncCursorTableCreateCompanionBuilder,
    $$SyncCursorTableUpdateCompanionBuilder,
    (
      SyncCursorData,
      BaseReferences<_$AppDatabase, $SyncCursorTable, SyncCursorData>
    ),
    SyncCursorData,
    PrefetchHooks Function()> {
  $$SyncCursorTableTableManager(_$AppDatabase db, $SyncCursorTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncCursorTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncCursorTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncCursorTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cursorTable = const Value.absent(),
            Value<DateTime?> lastUpdatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SyncCursorCompanion(
            cursorTable: cursorTable,
            lastUpdatedAt: lastUpdatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cursorTable,
            Value<DateTime?> lastUpdatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SyncCursorCompanion.insert(
            cursorTable: cursorTable,
            lastUpdatedAt: lastUpdatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncCursorTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SyncCursorTable,
    SyncCursorData,
    $$SyncCursorTableFilterComposer,
    $$SyncCursorTableOrderingComposer,
    $$SyncCursorTableAnnotationComposer,
    $$SyncCursorTableCreateCompanionBuilder,
    $$SyncCursorTableUpdateCompanionBuilder,
    (
      SyncCursorData,
      BaseReferences<_$AppDatabase, $SyncCursorTable, SyncCursorData>
    ),
    SyncCursorData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FamiliesTableTableManager get families =>
      $$FamiliesTableTableManager(_db, _db.families);
  $$MembersTableTableManager get members =>
      $$MembersTableTableManager(_db, _db.members);
  $$FamilyAnswerTableTableManager get familyAnswer =>
      $$FamilyAnswerTableTableManager(_db, _db.familyAnswer);
  $$MultipleAnswerQuestionTableTableManager get multipleAnswerQuestion =>
      $$MultipleAnswerQuestionTableTableManager(
          _db, _db.multipleAnswerQuestion);
  $$RelationsTableTableManager get relations =>
      $$RelationsTableTableManager(_db, _db.relations);
  $$GendersTableTableManager get genders =>
      $$GendersTableTableManager(_db, _db.genders);
  $$MaritalStatusTableTableManager get maritalStatus =>
      $$MaritalStatusTableTableManager(_db, _db.maritalStatus);
  $$JobsTableTableManager get jobs => $$JobsTableTableManager(_db, _db.jobs);
  $$NationalitiesTableTableManager get nationalities =>
      $$NationalitiesTableTableManager(_db, _db.nationalities);
  $$EducationLevelsTableTableManager get educationLevels =>
      $$EducationLevelsTableTableManager(_db, _db.educationLevels);
  $$EducationStatusesTableTableManager get educationStatuses =>
      $$EducationStatusesTableTableManager(_db, _db.educationStatuses);
  $$DocumentTypesTableTableManager get documentTypes =>
      $$DocumentTypesTableTableManager(_db, _db.documentTypes);
  $$RequiredServicesTableTableManager get requiredServices =>
      $$RequiredServicesTableTableManager(_db, _db.requiredServices);
  $$ServiceStatusesTableTableManager get serviceStatuses =>
      $$ServiceStatusesTableTableManager(_db, _db.serviceStatuses);
  $$CenterTypesTableTableManager get centerTypes =>
      $$CenterTypesTableTableManager(_db, _db.centerTypes);
  $$ModalitiesTableTableManager get modalities =>
      $$ModalitiesTableTableManager(_db, _db.modalities);
  $$ForWhosTableTableManager get forWhos =>
      $$ForWhosTableTableManager(_db, _db.forWhos);
  $$QuestionTypesTableTableManager get questionTypes =>
      $$QuestionTypesTableTableManager(_db, _db.questionTypes);
  $$SectionsTableTableManager get sections =>
      $$SectionsTableTableManager(_db, _db.sections);
  $$AnswerSetsTableTableManager get answerSets =>
      $$AnswerSetsTableTableManager(_db, _db.answerSets);
  $$AnswerItemsTableTableManager get answerItems =>
      $$AnswerItemsTableTableManager(_db, _db.answerItems);
  $$QuestionsTableTableManager get questions =>
      $$QuestionsTableTableManager(_db, _db.questions);
  $$WgqQuestionsTableTableManager get wgqQuestions =>
      $$WgqQuestionsTableTableManager(_db, _db.wgqQuestions);
  $$OutboxTableTableManager get outbox =>
      $$OutboxTableTableManager(_db, _db.outbox);
  $$SyncCursorTableTableManager get syncCursor =>
      $$SyncCursorTableTableManager(_db, _db.syncCursor);
}
