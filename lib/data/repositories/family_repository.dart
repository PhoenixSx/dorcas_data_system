
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../db/drift_db.dart';
import 'sync_cursor_dao.dart';

class FamilyRepository {
  FamilyRepository(this.db, this.client, this.cursorDao);
  final AppDatabase db;
  final SupabaseClient client;
  final SyncCursorDao cursorDao;

  static const table = 'family';

  Future<List<FamiliesData>> getAllLocal() => db.select(db.families).get();

  Future<void> upsertLocal(FamiliesData f) async {
    await db.into(db.families).insertOnConflictUpdate(f.toCompanion(true));
  }

  Future<void> queueUpsert(FamiliesData f) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: table,
        op: 'upsert',
        rowId: f.id,
        payload: jsonEncode(f.toJson()),
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<void> queueDelete(String id) async {
    await db.into(db.outbox).insert(
      OutboxCompanion.insert(
        targetTable: table,
        op: 'delete',
        rowId: id,
        payload: '{}',
        queuedAt: DateTime.now(),
      ),
    );
  }

  Future<int> pullDelta({int pageSize = 1000}) async {
    int total = 0;
    DateTime? cursor = await cursorDao.getCursor(table);
    String since = (cursor ?? DateTime.parse('1900-01-01T00:00:00Z')).toIso8601String();

    DateTime? maxSeen;
    while (true) {
      final res = await client
          .from(table)
          .select('*')
          .gt('updated_at', since)
          .order('updated_at', ascending: true)
          .limit(pageSize);

      final list = (res as List).cast<Map<String, dynamic>>();
      if (list.isEmpty) break;

      await db.transaction(() async {
        for (final row in list) {
          final f = FamiliesData.fromJson(row);
          await upsertLocal(f);
          total++;
          if (maxSeen == null || f.updatedAt.isAfter(maxSeen!)) maxSeen = f.updatedAt;
        }
      });

      if (list.length < pageSize) break; // no more pages
      since = list.last['updated_at'];
    }

    if (maxSeen != null) {
      await cursorDao.setCursor(table, maxSeen!);
    }
    return total;
  }
}
