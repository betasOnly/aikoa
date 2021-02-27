part of '../core/database.dart';

class DaylyStats extends Table {
  DateTimeColumn get date => dateTime()();
  DateTimeColumn get shutdownAt => dateTime().nullable()();
  IntColumn get tasksDone => integer().nullable()();
  IntColumn get tasksTotal => integer().nullable()();
  IntColumn get minutesScheduled => integer().nullable()();
  IntColumn get minutesFocused => integer().nullable()();

  @override
  Set<Column> get primaryKey => {date};
}
