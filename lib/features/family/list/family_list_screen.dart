
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../state/providers.dart';
import '../detail/family_detail_screen.dart';
import '../../../data/db/drift_db.dart';

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
    setState(() => items = data);
    await ref.read(syncEngineProvider).runCycle();
    final refreshed = await repo.getAllLocal();
    if (mounted) setState(() => items = refreshed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final f = items[i];
          return ListTile(
            title: Text(f.streetName ?? '(no street)'),
            subtitle: Text('Center: ${f.centerId ?? '-'} | Location: ${f.locationId ?? '-'}'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => FamilyDetailScreen(familyId: f.id)),
            ),
          );
        },
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
            hasLostMembers: false
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
