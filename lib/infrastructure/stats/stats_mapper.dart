import 'package:dartz/dartz.dart';

import 'package:Dayly/domain/stats/dayly_stats.dart' as domain;
import 'package:Dayly/infrastructure/core/database.dart';

extension StatsDomainX on DaylyStat {
  domain.DaylyStats toDomain() {
    return domain.DaylyStats(
      date: date,
      shutdownAt: optionOf(shutdownAt),
      tasksDone: tasksDone?? 0,
      tasksTotal: tasksTotal?? 0,
      timeScheduled: Duration(minutes: minutesScheduled?? 0),
      timeFocused: Duration(minutes: minutesFocused?? 0)
    );
  }
}