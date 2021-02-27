part of '../core/database.dart';

@UseDao(tables: [DaylyStats])
class StatsDao extends DatabaseAccessor<AppDatabase> with _$StatsDaoMixin {
  StatsDao(AppDatabase db): super(db);

  Future<DaylyStat> getToday() {
    return (select(daylyStats)
      ..where((stat) => stat.date.equals(DateTime.now().toDate()))
    ).getSingle();
  }

  Stream<DaylyStat> watchToday() {
    return (select(daylyStats)
      ..where((stat) => stat.date.equals(DateTime.now().toDate()))
    ).watchSingle();
  }

  Future<void> insert(Insertable<DaylyStat> day) {
    return into(daylyStats).insert(day, mode: InsertMode.insertOrIgnore);
  }

  Future<void> remove(Insertable<DaylyStat> day) => delete(daylyStats).delete(day);

  Future<void> updateStat(Insertable<DaylyStat> day) => update(daylyStats).replace(day);
}

extension DateTimeX on DateTime {
  DateTime toDate() => DateTime(year, month, day);
}