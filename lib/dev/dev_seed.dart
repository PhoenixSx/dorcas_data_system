// lib/dev/dev_seed.dart
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/providers.dart';
import '../data/db/drift_db.dart';

/// Seeds one family + N members locally and (optionally) enqueues sync.
/// Returns the created family id.
Future<String> seedFamilyWithMembers(
  WidgetRef ref, {
  int membersCount = 3,
  bool queueRemote = true,
  bool runSyncAfter = false,
}) async {
  final familyRepo = ref.read(familyRepoProvider);
  final memberRepo = ref.read(memberRepoProvider);
  final lookups = ref.read(lookupRepoProvider);
  final engine = ref.read(syncEngineProvider);

  // Make sure we have lookups locally so required IDs exist (relation, marital)
  await engine.warmLookupsNow();

  final relations = await lookups.getRelationsLocal();
  final marital = await lookups.getMaritalStatusLocal();
  final genders = await lookups.getGendersLocal();

  String _firstIdOr(String fallback, List<dynamic> rows) =>
      rows.isNotEmpty ? (rows.first as dynamic).id as String : fallback;

  final relationId = _firstIdOr('relation-unknown', relations);
  final maritalStatusId = _firstIdOr('marital-unknown', marital);
  final genderIdOpt = genders.isNotEmpty ? genders.first.id : null;

  final now = DateTime.now();
  final familyId = now.microsecondsSinceEpoch.toString();

  // --- Family ---
  final f = FamiliesData(
    id: familyId,
    createdAt: now,
    updatedAt: now,
    registrationDate: now,
    staffId: null,
    modalityId: null,
    centerId: null,
    locationId: null,
    streetName: 'Seeded Street ${now.millisecondsSinceEpoch}',
    numOfBuilding: null,
    floorNumber: null,
    documentTypeId: null,
    documentNum: null,
    socialStatusId: null,
    hasLostMembers: false,
  );
  await familyRepo.upsertLocal(f);
  if (queueRemote) await familyRepo.queueUpsert(f);

  // --- Members ---
  final rnd = Random();
  List<String> firstNames = ['Ahmad', 'Sara', 'Omar', 'Layla', 'Hadi', 'Nadia'];
  List<String> lastNames = ['Khan', 'Saleh', 'Haddad', 'Farah', 'Nassar', 'Aziz'];

  for (var i = 0; i < membersCount; i++) {
    final isHoh = i == 0;
    final isRespondent = i == 0;
    final first = firstNames[rnd.nextInt(firstNames.length)];
    final last = lastNames[rnd.nextInt(lastNames.length)];
    final dob = DateTime(1980 + rnd.nextInt(20), 1 + rnd.nextInt(12), 1 + rnd.nextInt(28));

    final m = MembersData(
      id: '${familyId}_m$i',
      createdAt: now,
      updatedAt: now,
      isRespondent: isRespondent,
      isHoh: isHoh,
      firstName: first,
      fatherName: 'Ibn ${last.substring(0, min(3, last.length))}',
      lastName: last,
      dateOfBirth: dob,
      nationalityId: null,
      documentTypeId: null,
      documentNum: null,
      phone1: null,
      phone2: null,
      maritalStatusId: maritalStatusId, // required
      relationId: relationId,           // required
      familyId: familyId,
      genderId: genderIdOpt,            // nullable
    );

    await memberRepo.upsertLocal(m);
    if (queueRemote) await memberRepo.queueUpsert(m);
  }

  if (runSyncAfter) {
    await engine.runCycle();
  }

  return familyId;
}