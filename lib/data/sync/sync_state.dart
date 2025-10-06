import 'package:flutter/foundation.dart';

enum SyncPhase { idle, offline, pushing, lookups, pulling, done, error }

@immutable
class SyncState {
  final SyncPhase phase;
  final bool online;
  final bool running;
  final DateTime? startedAt;
  final DateTime? finishedAt;
  final String? error;

  const SyncState({
    this.phase = SyncPhase.idle,
    this.online = true,
    this.running = false,
    this.startedAt,
    this.finishedAt,
    this.error,
  });

  SyncState copyWith({
    SyncPhase? phase,
    bool? online,
    bool? running,
    DateTime? startedAt,
    DateTime? finishedAt,
    String? error,
  }) {
    return SyncState(
      phase: phase ?? this.phase,
      online: online ?? this.online,
      running: running ?? this.running,
      startedAt: startedAt ?? this.startedAt,
      finishedAt: finishedAt ?? this.finishedAt,
      error: error,
    );
  }
}