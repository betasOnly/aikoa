part of '../core/database.dart';

@UseDao(tables: [Schedules, Tasks])
class SchedulesDao extends DatabaseAccessor<AppDatabase> with _$SchedulesDaoMixin {
    SchedulesDao(AppDatabase db): super(db);

  DateTime get startOfDay {
    final today = DateTime.now();
    return DateTime(today.year, today.month, today.day, 8);
  }

  Future<Schedule> get last {
    DateTime today = DateTime.now();
    return (
      select(schedules)
        ..where((row) => _isAtSameDay(row.start, today))
        ..orderBy([
          (s) => OrderingTerm(expression: s.start, mode: OrderingMode.desc)
        ])
        ..limit(1)
      ).getSingle();
  }

  Stream<ScheduledTask> get focus {
    DateTime today = DateTime.now();
    return (
      select(schedules)
        ..where((row) {
          return _isAtSameDay(row.start, today) & row.focus.equals(true);
        }))
        .join([
          leftOuterJoin(tasks, tasks.id.equalsExp(schedules.pid))
        ]
      ).watchSingle()
        .map((row) {
          if (row == null) return null;
          return ScheduledTask(
            schedule: row.readTable(schedules),
            task: row.readTable(tasks),
          );
        });
  }

  Stream<List<ScheduledTask>> watch(DateTime day, [bool isDone = false]) {
    return (
      select(schedules)
        ..where((row) => _isAtSameDay(row.start, day) & _isTodo(row))
        ..orderBy([
          (s) => OrderingTerm(expression: s.start),
          (s) => OrderingTerm(expression: s.end)
        ]))
        .join([
          leftOuterJoin(tasks, tasks.id.equalsExp(schedules.pid))
        ]
      ).watch()
        .map((rows) => rows.map(
          (row) {
            return ScheduledTask(
              schedule: row.readTable(schedules),
              task: row.readTable(tasks)
            );
          }).toList()
        );
  }

  Future<int> insert(Insertable<Schedule> schedule) {
    return into(schedules).insert(schedule);
  }

  Future<bool> updateSchedule(Insertable<Schedule> schedule) {
    return update(schedules).replace(schedule);
  }

  Future remove(Insertable<Schedule> schedule) {
    return delete(schedules).delete(schedule);
  }

  Expression<bool> _isAtSameDay(DateTimeColumn column, DateTime day) {
    return column.year.equals(day.year)
      & column.day.equals(day.day)
      & column.month.equals(day.month);
  }

  Expression<bool> _isTodo($SchedulesTable row) {
    return row.done.equals(false) & row.focus.equals(false); 
  }
}