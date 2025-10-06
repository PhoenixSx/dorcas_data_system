import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../state/providers.dart';
import '../../../data/db/drift_db.dart';

class FamilyDetailScreen extends ConsumerStatefulWidget {
  const FamilyDetailScreen({super.key, required this.familyId});
  final String familyId;

  @override
  ConsumerState<FamilyDetailScreen> createState() => _FamilyDetailScreenState();
}

class _FamilyDetailScreenState extends ConsumerState<FamilyDetailScreen> {
  List<MembersData> members = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final repo = ref.read(memberRepoProvider);
    final data = await repo.getByFamilyLocal(widget.familyId);
    if (!mounted) return;
    setState(() => members = data);
    // Temporary debug:
    // ignore: avoid_print
    print('Family ${widget.familyId} member count = ${members.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Family: ${widget.familyId}')),
      body: ListView.separated(
        itemCount: members.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final m = members[i];
          return ListTile(
            title: Text('${m.firstName} ${m.lastName}'),
            subtitle: Text(
                'Relation: ${m.relationId}  Marital: ${m.maritalStatusId}'),
          );
        },
      ),
    );
  }
}
