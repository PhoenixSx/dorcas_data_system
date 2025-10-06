import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // ⬅️ add
import 'outbox_pusher.dart';
import 'delta_puller.dart';
import '../repositories/lookup_repository.dart';
import 'sync_state.dart'; // ⬅️ add

class SyncEngine {
  SyncEngine(
    this.pusher,
    this.puller, {
    required this.lookups,
    this.lookupTtl = const Duration(hours: 12),
    this.status, // ⬅️ add
  });

  final OutboxPusher pusher;
  final DeltaPuller puller;
  final LookupRepository lookups;
  final Duration lookupTtl;
  final StateController<SyncState>? status; // ⬅️ add

  DateTime? _lastLookupRefresh;
  bool _running = false;

  Future<bool> get _online async {
    final c = await Connectivity().checkConnectivity();
    return c.contains(ConnectivityResult.mobile) ||
           c.contains(ConnectivityResult.wifi)   ||
           c.contains(ConnectivityResult.ethernet);
  }

  void _emit(SyncState s) => status?.state = s;

  bool _shouldRefreshLookups() =>
      _lastLookupRefresh == null ||
      DateTime.now().difference(_lastLookupRefresh!) > lookupTtl;

  Future<void> runCycle() async {
    if (_running) return;
    _running = true;
    final start = DateTime.now();

    try {
      final online = await _online;
      if (!online) {
        _emit((status?.state ?? const SyncState())
            .copyWith(online: false, running: false, phase: SyncPhase.offline));
        return;
      }

      _emit(SyncState(phase: SyncPhase.pushing, online: true, running: true, startedAt: start));
      await pusher.pushOnce();

      if (_shouldRefreshLookups()) {
        _emit((status?.state ?? const SyncState()).copyWith(phase: SyncPhase.lookups));
        await lookups.pullAll();
        _lastLookupRefresh = DateTime.now();
      }

      _emit((status?.state ?? const SyncState()).copyWith(phase: SyncPhase.pulling));
      await puller.pullAll();

      _emit((status?.state ?? const SyncState()).copyWith(
        phase: SyncPhase.done, running: false, finishedAt: DateTime.now(), error: null));
    } catch (e) {
      _emit((status?.state ?? const SyncState()).copyWith(
        phase: SyncPhase.error, running: false, finishedAt: DateTime.now(), error: e.toString()));
    } finally {
      _running = false;
    }
  }

  Future<void> warmLookupsNow() async {
    final online = await _online;
    if (!online) {
      _emit((status?.state ?? const SyncState()).copyWith(online: false, phase: SyncPhase.offline));
      return;
    }
    try {
      _emit((status?.state ?? const SyncState())
          .copyWith(online: true, phase: SyncPhase.lookups, running: true, startedAt: DateTime.now()));
      await lookups.pullAll();
      _lastLookupRefresh = DateTime.now();
      _emit((status?.state ?? const SyncState())
          .copyWith(phase: SyncPhase.done, running: false, finishedAt: DateTime.now(), error: null));
    } catch (_) {
      _emit((status?.state ?? const SyncState())
          .copyWith(phase: SyncPhase.error, running: false, finishedAt: DateTime.now()));
    }
  }
}