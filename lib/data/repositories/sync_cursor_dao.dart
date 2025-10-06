
import 'package:drift/drift.dart' as d;
import '../db/drift_db.dart';

class SyncCursorDao {
  SyncCursorDao(this.db);
  final AppDatabase db;

  Future<DateTime?> getCursor(String table) async {
    final row = await (db.select(db.syncCursor)
          ..where((t) => t.cursorTable.equals(table)))
        .getSingleOrNull();
    return row?.lastUpdatedAt;
  }

  Future<void> setCursor(String table, DateTime ts) async {
    await db.into(db.syncCursor).insertOnConflictUpdate(
      SyncCursorCompanion(
        cursorTable: d.Value(table),
        lastUpdatedAt: d.Value(ts),
      ),
    );
  }
}
