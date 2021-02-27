import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/domain/stats/i_stats_repository.dart';
import 'package:Dayly/domain/stats/stats_failure.dart';
import 'package:Dayly/domain/stats/dayly_stats.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide DaylyStats;

import './stats_mapper.dart';

@LazySingleton(as: IStatsRepository)
class StatsRepository implements IStatsRepository {
  final AppDatabase _database;

  StatsRepository(this._database);

  Stream<Either<StatsFailure, DaylyStats>> watchToday() async* {
    yield* _database.statsDao.watchToday().map(
      (snapshot) {
        if (snapshot != null) {
          return right(snapshot.toDomain());
        } else {
          return left(const StatsFailure.unexpected());
        }
      }
    );
  }

  Future<Either<StatsFailure, Unit>> create() async {
    try {
      await _database.statsDao.insert(fromDomain(DaylyStats.empty()));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const StatsFailure.unexpected());
    }
  }

  Future<Either<StatsFailure, Unit>> update(DaylyStats stats) async {
    try {
      await _database.statsDao.updateStat(fromDomain(stats));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const StatsFailure.unexpected());
    }
  }

  DaylyStatsCompanion fromDomain(DaylyStats stats) {
    return DaylyStatsCompanion.insert(
      date: stats.date,
      shutdownAt: stats.shutdownAt.fold(
        () => Value(null),
        (time) => Value(time)),
      tasksDone: Value(stats.tasksDone),
      tasksTotal: Value(stats.tasksTotal),
      minutesScheduled: Value(stats.timeScheduled.inMinutes),
      minutesFocused: Value(stats.timeFocused.inMinutes),
    );
  }
}