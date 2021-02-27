import 'dart:collection';

import 'package:dartz/dartz.dart';

import 'calendar.dart';
import 'calendar_failure.dart';

abstract class ICalendarRepository {
  Stream<Either<CalendarFailure, UnmodifiableListView<Calendar>>>
      watchCalendars();
  Future<Either<CalendarFailure, Calendar>> get calendar;
  Future<Either<CalendarFailure, Unit>> setCalendar(Calendar calendar);
  Stream<Either<CalendarFailure, UnmodifiableListView<Event>>>
      watchEvents(DateTime from, DateTime to);
  Stream<Either<CalendarFailure, Option<Event>>> watchCurrent();
  Future<Either<CalendarFailure, Unit>> create(Event event);
  Future<Either<CalendarFailure, Unit>> update(Event event);
  Future<Either<CalendarFailure, Unit>> delete(Event event);
}
