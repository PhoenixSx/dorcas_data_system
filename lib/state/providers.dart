
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_first_case_mgmt/data/sync/sync_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../data/db/drift_db.dart';
import '../data/repositories/sync_cursor_dao.dart';
import '../data/repositories/family_repository.dart';
import '../data/repositories/member_repository.dart';
import '../data/repositories/answers_repository.dart';
import '../data/repositories/lookup_repository.dart';
import '../data/sync/outbox_pusher.dart';
import '../data/sync/delta_puller.dart';
import '../data/sync/sync_engine.dart';

final dbProvider = Provider<AppDatabase>((ref) => AppDatabase());
final supaProvider = Provider<SupabaseClient>((ref) => Supabase.instance.client);
final cursorDaoProvider = Provider<SyncCursorDao>((ref) => SyncCursorDao(ref.read(dbProvider)));
final syncStateProvider = StateProvider<SyncState>((ref) => const SyncState());

final familyRepoProvider = Provider<FamilyRepository>((ref) =>
    FamilyRepository(ref.read(dbProvider), ref.read(supaProvider), ref.read(cursorDaoProvider)));
final memberRepoProvider = Provider<MemberRepository>((ref) =>
    MemberRepository(ref.read(dbProvider), ref.read(supaProvider), ref.read(cursorDaoProvider)));
final answerRepoProvider = Provider<AnswerRepository>((ref) =>
    AnswerRepository(ref.read(dbProvider), ref.read(supaProvider), ref.read(cursorDaoProvider)));
final lookupRepoProvider = Provider<LookupRepository>((ref) =>
    LookupRepository(ref.read(dbProvider), ref.read(supaProvider), ref.read(cursorDaoProvider)));

final outboxPusherProvider = Provider<OutboxPusher>((ref) =>
    OutboxPusher(ref.read(dbProvider), ref.read(supaProvider)));
final deltaPullerProvider = Provider<DeltaPuller>((ref) =>
    DeltaPuller(ref.read(familyRepoProvider), ref.read(memberRepoProvider), ref.read(answerRepoProvider)));


// EXISTING: your syncEngineProvider, add `status:` argument
final syncEngineProvider = Provider<SyncEngine>((ref) => SyncEngine(
  ref.read(outboxPusherProvider),
  ref.read(deltaPullerProvider),
  lookups: ref.read(lookupRepoProvider),
  lookupTtl: const Duration(hours: 12),
  status: ref.read(syncStateProvider.notifier), // ⬅️ inject status controller
));

