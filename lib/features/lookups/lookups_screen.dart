import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_first_case_mgmt/state/providers.dart';

class LookupsScreen extends ConsumerStatefulWidget {
  const LookupsScreen({super.key});
  @override
  ConsumerState<LookupsScreen> createState() => _LookupsScreenState();
}

class _LookupsScreenState extends ConsumerState<LookupsScreen> {
  late Future<void> _warmFuture;

  @override
  void initState() {
    super.initState();
    _warmFuture = ref.read(lookupRepoProvider).pullAll();
  }

  @override 
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _warmFuture,
      builder: (context, snap) {
        if (snap.hasError) {
          return Center(
            child: Text('Lookup pull failed: ${snap.error}'),
          );
        }
        return FutureBuilder(
          future: Future.wait([
            ref.read(lookupRepoProvider).getRelationsLocal(),
            ref.read(lookupRepoProvider).getGendersLocal(),
            ref.read(lookupRepoProvider).getMaritalStatusLocal(),
            ref.read(lookupRepoProvider).getJobsLocal(),
            ref.read(lookupRepoProvider).getSectionsLocal(),
            ref.read(lookupRepoProvider).getQuestionsLocal(),
            ref.read(lookupRepoProvider).getAnswerSetsLocal(),
            ref.read(lookupRepoProvider).getAnswerItemsLocal(),
          ]),
          builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final lists = snapshot.data!;
            final counts = {
              'relations': lists[0].length,
              'genders': lists[1].length,
              'marital_status': lists[2].length,
              'jobs': lists[3].length,
              'sections': lists[4].length,
              'questions': lists[5].length,
              'answer_sets': lists[6].length,
              'answer_items': lists[7].length,
            };
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text('Lookups (online-first, cached)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                ...counts.entries.map((e) => ListTile(
                      title: Text(e.key),
                      trailing: Text('${e.value}'),
                    )),
              ],
            );
          },
        );
      },
    );
  }
}