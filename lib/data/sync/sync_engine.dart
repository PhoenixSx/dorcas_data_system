
import 'package:connectivity_plus/connectivity_plus.dart';
import 'outbox_pusher.dart';
import 'delta_puller.dart';
import '../repositories/lookup_repository.dart';

class SyncEngine {
  SyncEngine(this.pusher, this.puller, {required this.lookups, this.lookupTtl = const Duration(hours: 12)});
  final OutboxPusher pusher;
  final DeltaPuller puller;
  final LookupRepository lookups;
  final Duration lookupTtl;

  DateTime? _lastLookupRefresh;

  Future<bool> get _online async {
    final c = await Connectivity().checkConnectivity();
    return c.contains(ConnectivityResult.mobile) ||
           c.contains(ConnectivityResult.wifi) ||
           c.contains(ConnectivityResult.ethernet);
  }

  Future<void> runCycle() async {
    if (!await _online) return;
    await pusher.pushOnce();
    if (_shouldRefreshLookups()) {
      try {
        await lookups.pullAll();
        _lastLookupRefresh = DateTime.now();
      } catch (_) {}
    }
    await puller.pullAll();
  }

  bool _shouldRefreshLookups() => _lastLookupRefresh == null || DateTime.now().difference(_lastLookupRefresh!) > lookupTtl;

  Future<void> warmLookupsNow() async {
    if (!await _online) return;
    try {
      await lookups.pullAll();
      _lastLookupRefresh = DateTime.now();
      
    } catch (_) {}
  }
}
