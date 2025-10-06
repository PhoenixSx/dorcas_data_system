import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../state/providers.dart';
import '../detail/family_detail_screen.dart';
import '../../../data/db/drift_db.dart';
import '../../../data/sync/sync_state.dart'; // ⬅️ new

class FamilyListScreen extends ConsumerStatefulWidget {
  const FamilyListScreen({super.key});
  @override
  ConsumerState<FamilyListScreen> createState() => _FamilyListScreenState();
}

class _FamilyListScreenState extends ConsumerState<FamilyListScreen> {
  List<FamiliesData> items = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final repo = ref.read(familyRepoProvider);
    final data = await repo.getAllLocal();
    if (mounted) setState(() => items = data);

    // Optional: do a cycle, then refresh list
    await ref.read(syncEngineProvider).runCycle();
    final refreshed = await repo.getAllLocal();
    if (mounted) setState(() => items = refreshed);
  }

  Future<void> _syncNow() => ref.read(syncEngineProvider).runCycle();

  @override
  Widget build(BuildContext context) {
    final sync = ref.watch(syncStateProvider);

    return Scaffold(
      body: Column(
        children: [
          _SyncStatusBar(
            sync: sync,
            onSyncNow: _syncNow,
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await _syncNow();
                await _load();
              },
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final f = items[i];
                  return ListTile(
                    title: Text(f.streetName ?? '(no street)'),
                    subtitle: Text('Center: ${f.centerId ?? '-'} \nLocation: ${f.locationId ?? '-'}'),
                    onTap: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => FamilyDetailScreen(familyId: f.id)),
                      );
                      if (mounted) _load();
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final now = DateTime.now();
          final f = FamiliesData(
            id: now.microsecondsSinceEpoch.toString(),
            createdAt: now,
            updatedAt: now,
            registrationDate: now,
            streetName: 'New Family @${now.toIso8601String()}',
            hasLostMembers: false,
          );
          final repo = ref.read(familyRepoProvider);
          await repo.upsertLocal(f);
          await repo.queueUpsert(f);
          await _load();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SyncStatusBar extends StatelessWidget {
  const _SyncStatusBar({required this.sync, required this.onSyncNow});

  final SyncState sync;
  final Future<void> Function() onSyncNow;

  String _label(BuildContext context) {
    switch (sync.phase) {
      case SyncPhase.offline:
        return 'Offline – sync paused';
      case SyncPhase.pushing:
        return 'Syncing: pushing outbox…';
      case SyncPhase.lookups:
        return 'Syncing: refreshing lookups…';
      case SyncPhase.pulling:
        return 'Syncing: pulling data…';
      case SyncPhase.done:
        final t = sync.finishedAt?.toLocal().toIso8601String().replaceFirst('T', ' ').split('.').first;
        return t == null ? 'Synced' : 'Last synced: $t';
      case SyncPhase.error:
        return 'Sync failed${sync.error != null ? ': ${sync.error}' : ''}';
      case SyncPhase.idle:
      return 'Idle';
    }
  }

  IconData _icon() {
    switch (sync.phase) {
      case SyncPhase.offline:
        return Icons.cloud_off;
      case SyncPhase.pushing:
      case SyncPhase.lookups:
      case SyncPhase.pulling:
        return Icons.sync;
      case SyncPhase.error:
        return Icons.error_outline;
      case SyncPhase.done:
        return Icons.cloud_done;
      case SyncPhase.idle:
      return Icons.cloud;
    }
  }

  Color? _bg(BuildContext context) {
    switch (sync.phase) {
      case SyncPhase.offline:
        return Colors.grey.withAlpha(38);
      case SyncPhase.error:
        return Theme.of(context).colorScheme.errorContainer.withAlpha(153);
      case SyncPhase.pushing:
      case SyncPhase.lookups:
      case SyncPhase.pulling:
        return Theme.of(context).colorScheme.secondaryContainer.withAlpha(102);
      case SyncPhase.done:
      case SyncPhase.idle:
      return Theme.of(context).colorScheme.surfaceContainerHighest.withAlpha(90);
    }
  }

  @override
  Widget build(BuildContext context) {
    final running = sync.running ||
        sync.phase == SyncPhase.pushing ||
        sync.phase == SyncPhase.lookups ||
        sync.phase == SyncPhase.pulling;

    return Material(
      color: _bg(context),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              if (running)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                Icon(_icon(), size: 20),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  _label(context),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              FilledButton.tonalIcon(
                onPressed: running ? null : onSyncNow,
                icon: const Icon(Icons.sync),
                label: const Text('Sync now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}