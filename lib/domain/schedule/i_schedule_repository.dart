import 'dart:collection';

import 'package:dartz/dartz.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';

abstract class IScheduleRepository {
  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchUncompleted();
  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchTomorrow();
  Stream<Either<ScheduleFailure, Option<TimeBox>>>watchFocus();
  Future<Either<ScheduleFailure, UniqueId>> create(TimeBox timebox);
  Future<Either<ScheduleFailure, Unit>> update(TimeBox timebox);
  Future<Either<ScheduleFailure, Unit>> delete(TimeBox timebox);
}
