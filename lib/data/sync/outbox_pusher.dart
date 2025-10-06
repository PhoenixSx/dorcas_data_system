
import 'dart:convert';
import 'package:drift/drift.dart' as d;
import 'package:supabase_flutter/supabase_flutter.dart';
import '../db/drift_db.dart';

class OutboxPusher {
  OutboxPusher(this.db, this.client);
  final AppDatabase db;
  final SupabaseClient client;

  Future<int> pushOnce({int maxBatch = 100}) async {
    final jobs = await (db.select(db.outbox)
          ..orderBy([(t) => d.OrderingTerm(expression: t.queuedAt)])
          ..limit(maxBatch))
        .get();

    var processed = 0;
    for (final j in jobs) {
      try {
        final map = jsonDecode(j.payload) as Map<String, dynamic>;
        final table = client.from(j.targetTable);
        if (j.op == 'delete') {
          await table.delete().eq('id', j.rowId);
        } else {
          await table.upsert(map);
        }
        await (db.delete(db.outbox)..where((t) => t.id.equals(j.id))).go();
        processed++;
      } catch (e) {
        await (db.update(db.outbox)..where((t) => t.id.equals(j.id))).write(
          OutboxCompanion(
            attempt: d.Value(j.attempt + 1),
            lastError: d.Value(e.toString()),
          ),
        );
        break;
      }
    }
    return processed;
  }
}
