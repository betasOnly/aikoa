import 'package:dartz/dartz.dart';

import 'dayly_stats.dart';
import 'stats_failure.dart';

abstract class IStatsRepository {
  Stream<Either<StatsFailure, DaylyStats>> watchToday();
  Future<Either<StatsFailure, Unit>> create();
  Future<Either<StatsFailure, Unit>> update(DaylyStats stats);
}