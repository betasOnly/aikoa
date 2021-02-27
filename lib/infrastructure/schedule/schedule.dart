part of '../core/database.dart';

class Schedules extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pid =>
    integer().nullable().customConstraint('NULL REFERENCES tasks(id)')();
  DateTimeColumn get start => dateTime()();
  DateTimeColumn get end => dateTime().nullable()();
  BoolColumn get focus => boolean().withDefault(Constant(false))();
  BoolColumn get done => boolean().withDefault(Constant(false))();
}

class ScheduledTask extends Schedule {
  final Task task;

  ScheduledTask({@required Schedule schedule, this.task}): super(
    id: schedule.id, pid: schedule.pid, start: schedule.start, end: schedule.end,
    focus: schedule.focus, done: schedule.done
  );
}