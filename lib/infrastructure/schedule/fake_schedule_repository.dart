import 'dart:collection';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/injection.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/schedule/i_schedule_repository.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide Task, Tag;

import './timebox_mapper.dart';

@LazySingleton(as: IScheduleRepository, env: [Env.fake])
class ScheduleRepository implements IScheduleRepository {
  final today = DateTime.now();
  final AppDatabase _database;

  ScheduleRepository(this._database);

  static UnmodifiableListView<TimeBox> schedule = UnmodifiableListView<TimeBox>([
    TimeBox(
      id: UniqueId(),
      timeSlot: right(TimeSlot.next(DateTime.now())),
      task: Task(
        id: UniqueId(),
        title: CardTitle('Landing Page'),
        tag: some(Tag(name: TagName('Project'))),
        deadline: none(),
        child: none()
      ),
      done: false,
      focus: true
    ),
    TimeBox(
      id: UniqueId(),
      timeSlot: right(TimeSlot(DateTime(2021,1,1,13), DateTime(2021,1,1,14,30))),
      task: Task(
        id: UniqueId(),
        title: CardTitle('Sprint Meeting'),
        tag: some(Tag(name: TagName('Work'))),
        deadline: none(),
        child: none()
      ),
      done: false,
      focus: false
    ),
    TimeBox(
      id: UniqueId(),
      timeSlot: right(TimeSlot(DateTime(2021,1,1,14,30), DateTime(2021,1,1,16,30))),
      task: Task(
        id: UniqueId(),
        title: CardTitle('Landing Page'),
        tag: some(Tag(name: TagName('Project'))),
        deadline: none(),
        child: none()
      ),
      done: false,
      focus: false
    ),
    TimeBox(
      id: UniqueId(),
      timeSlot: right(TimeSlot(DateTime(2021,1,1,17), DateTime(2021,1,1,18))),
      task: Task(
        id: UniqueId(),
        title: CardTitle('Paper Review'),
        tag: some(Tag(name: TagName('University'))),
        deadline: none(),
        child: none()
      ),
      done: false,
      focus: false
    ),
  ]);

  @override
  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchUncompleted() async* {
        yield right(schedule);
      }

  Stream<Either<ScheduleFailure, UnmodifiableListView<TimeBox>>>
      watchTomorrow() async* {
        yield right(schedule);
      }

  @override
  Stream<Either<ScheduleFailure, Option<TimeBox>>> watchFocus() async* {
    yield right(some(schedule.firstWhere((element) => element.focus)));
  }

  @override
  Future<Either<ScheduleFailure, UniqueId>> create(
      TimeBox timebox) async {
    return left(const ScheduleFailure.unexpected());
  }

  @override
  Future<Either<ScheduleFailure, Unit>> update(
      TimeBox timebox) async {
    return left(const ScheduleFailure.unexpected());
  }

  @override
  Future<Either<ScheduleFailure, Unit>> delete(
      TimeBox timebox) async {
    return left(const ScheduleFailure.unexpected());
  }
}
