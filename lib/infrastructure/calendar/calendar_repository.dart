import 'dart:async';
import 'dart:collection';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:device_calendar/device_calendar.dart' as device;
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';

import 'device_calendar_mapper.dart';

@LazySingleton(as: ICalendarRepository, env: [Env.dev, Env.prod])
class CalendarRepository implements ICalendarRepository {
  final SharedPreferences _instance;
  final device.DeviceCalendarPlugin _plugin;
  device.Calendar _calendar;
  StreamController<void> calendarEvent;

  CalendarRepository(this._instance, this._plugin) {
    calendarEvent = StreamController<void>.broadcast();
  }
  

  Stream<Either<CalendarFailure, UnmodifiableListView<Calendar>>>
      watchCalendars() async* {
    try {
      var permissionsGranted = await _plugin.requestPermissions();
      if (!permissionsGranted.isSuccess) {
        yield left(const CalendarFailure.insufficientPermissions());
      } else {
        final result = (await _plugin.retrieveCalendars()).data;
        yield right(UnmodifiableListView<Calendar>(result
            .where((snapshot) => !snapshot.isReadOnly)
            .map((snapshot) => snapshot.toDomain())));
      }
    } catch (e) {
      print(e);
      yield left(const CalendarFailure.unexpected());
    }
  }

  Future<Either<CalendarFailure, Calendar>> get calendar async {
    if (_calendar == null) {
      try {
        String id = _instance.getString('CalendarId');
        final result = (await _plugin.retrieveCalendars()).data;
        _calendar = result?.firstWhere((
            element) => element.id == id,
            orElse: () => null);
      } catch(e) {
        print(e);
      }
    }
    if (_calendar != null) {
      return right(_calendar.toDomain());
    } else {
      return left(const CalendarFailure.noCalendarConnected());
    }
  }

  Future<String> get calendarId async {
    return (await calendar).fold((f) => null, (c) => c.id.getOrCrash());
  }

  Future<Either<CalendarFailure, Unit>> setCalendar(
      Calendar newCalendar) async {
    try {
      await _instance.setString('CalendarId', newCalendar.id.getOrCrash());
      calendarEvent.add(unit);
      return right(unit);
    } catch (e) {
      print(e);
      return left(const CalendarFailure.unexpected());
    }
  }

  Stream<Either<CalendarFailure, Option<Event>>> watchCurrent() async* {
    yield right(none());
    yield* Rx.combineLatest2(
      calendarEvent.stream,
      Stream.periodic(Duration(seconds: 30)),
      (_, __) {
        return;
      }
    ).asyncMap((_) async {
      try {
        device.Event event = (await _plugin.retrieveEvents(
            _calendar.id,
            device.RetrieveEventsParams(
              startDate: DateTime.now(),
              endDate: DateTime.now())
            )
        ).data.firstWhere((element) => true, orElse: () => null);
        return right(optionOf(event?.toDomain()));
      } catch(e) {
        print(e);
        return left(const CalendarFailure.unexpected());
      }
    });
  }

  Stream<Either<CalendarFailure, UnmodifiableListView<Event>>> watchEvents(
      DateTime from, DateTime to) async* {
        final calendarOrFailure = await calendar;
        yield* calendarOrFailure.fold(
          (failure) async* {
            yield left(failure);
          },
          (calendar) async* {
            // Super dumb hack to make sure that event is added after stream
            // is yielded. There need to be a better solution, but it works
            Future.delayed(
              Duration(milliseconds: 1),
              () => calendarEvent.add(unit)
            );
            yield* calendarEvent.stream.asyncMap((_) async {
              try {
                var result = (await _plugin.retrieveEvents(
                  _calendar.id,
                  device.RetrieveEventsParams(startDate: from, endDate: to))
                ).data.toList();
                result.sort((a, b) {
                  if (a.start.isAtSameMomentAs(b.start)) {
                    return a.end.difference(b.end).inMinutes;
                  } else {
                    return a.start.difference(b.start).inMinutes;
                  }
                });
                return right(
                  UnmodifiableListView(result.map((e) => e.toDomain()))
                );
              } catch(e) {
                print(e);
                return left(const CalendarFailure.unexpected());
              }
            });
          }
        );
      }

  Future<Either<CalendarFailure, Unit>> create(Event event) async {
    try {
      await _plugin.createOrUpdateEvent(
        event.copyWith(id: UniqueId.empty()).toDevice(await calendarId)
      );
      calendarEvent.add(unit);
      return right(unit);
    } catch(e) {
      return left(const CalendarFailure.unexpected());
    }
  }

  Future<Either<CalendarFailure, Unit>> update(Event event) async {
    try {
      await _plugin.createOrUpdateEvent(event.toDevice(await calendarId));
      calendarEvent.add(unit);
      return right(unit);
    } catch(e) {
      print(e);
      return left(const CalendarFailure.unableToUpdate());
    }
  }

  Future<Either<CalendarFailure, Unit>> delete(Event event) async {
    try {
      await _plugin.deleteEvent(await calendarId, event.id.getOrCrash());
      calendarEvent.add(unit);
      return right(unit);
    } catch(e) {
      print(e);
      return left(const CalendarFailure.unableToUpdate());
    }
  }
}
