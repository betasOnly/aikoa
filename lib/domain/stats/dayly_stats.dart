import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/extensions.dart';

part 'dayly_stats.freezed.dart';

@freezed
abstract class DaylyStats with _$DaylyStats {
  const factory DaylyStats({
    @required DateTime date,
    @required Option<DateTime> shutdownAt,
    @required int tasksDone,
    @required int tasksTotal,
    @required Duration timeScheduled,
    @required Duration timeFocused,
  }) = _DaylyStats;

  factory DaylyStats.empty() => DaylyStats(
      date: DateTime.now().toDate(),
      shutdownAt: none(),
      tasksDone: 0,
      tasksTotal: 0,
      timeScheduled: Duration(),
      timeFocused: Duration()
    );
}
