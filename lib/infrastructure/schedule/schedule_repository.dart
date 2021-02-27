import 'dart:collection';

import 'package:Dayly/injection.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/schedule/i_schedule_repository.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/infrastructure/core/database.dart';

import './timebox_mapper.dart';

@LazySingleton(as: IScheduleRepository, env: [Env.prod, Env.dev])
class ScheduleRepository implements IScheduleRepository {
  final today = DateTime.now();
  final AppDatabase _database;

  ScheduleRepository(this._database);

  @override
  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchUncompleted() async* {
        yield* _database.schedulesDao.watch(today).map(
          (snapshot) {
              return right(UnmodifiableListView<TimeBox>(
                snapshot.map((timebox) => timebox.toDomain())
              ));
          }
        );
      }

  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchTomorrow() async* {
        yield* _database.schedulesDao.watch(today.add(Duration(days: 1))).map(
          (snapshot) {
              return right(UnmodifiableListView<TimeBox>(
                snapshot.map((timebox) => timebox.toDomain())
              ));
          }
        );
      }

  @override
  Stream<Either<ScheduleFailure, Option<TimeBox>>> watchFocus() async* {
    yield* _database.schedulesDao.focus.map(
        (timebox) => right<ScheduleFailure, Option<TimeBox>>(
          optionOf(timebox?.toDomain())));
  }

  @override
  Future<Either<ScheduleFailure, UniqueId>> create(
      TimeBox timebox) async {
    try {
      final uid = await _database.schedulesDao.insert(
        fromDomain(timebox).copyWith(id: Value.absent()));
      return right(UniqueId.fromUniqueInteger(uid));
    } catch (e) {
      print(e);
      return left(const ScheduleFailure.unexpected());
    }
  }

  @override
  Future<Either<ScheduleFailure, Unit>> update(
      TimeBox timebox) async {
    try {
      await _database.schedulesDao.updateSchedule(fromDomain(timebox));
      return right(unit);
    } catch (e) {
      return left(const ScheduleFailure.unexpected());
    }
  }

  @override
  Future<Either<ScheduleFailure, Unit>> delete(
      TimeBox timebox) async {
    try {
      await _database.schedulesDao.remove(fromDomain(timebox));
      return right(unit);
    } catch (e) {
      return left(const ScheduleFailure.unexpected());
    }
  }

  SchedulesCompanion fromDomain(TimeBox timebox) {
    return SchedulesCompanion.insert(
        id: Value(timebox.id.toInt()),
        pid: Value(timebox.task.id.toInt()),
        start: timebox.start,
        end: Value(timebox.end),
        done: Value(timebox.done),
        focus: Value(timebox.focus));
  }
}
