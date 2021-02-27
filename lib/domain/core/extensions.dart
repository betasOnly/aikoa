import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  static final DateFormat _timeFormat = DateFormat.Hm();
  static final DateFormat _dateFormat = DateFormat.yMMMEd();

  TimeOfDay toTimeOfDay() => TimeOfDay(hour: hour, minute: minute);

  DateTime setTime(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }
  
  DateTime toInterval([int minutes=15]) {
    int _minute = (minute ~/ minutes) * minutes;
    int _hour = hour + (_minute == 60 ? 1 : 0);
    return DateTime(year, month, day, _hour, _minute % 60);
  }

  DateTime toDate() => DateTime(year, month, day);

  bool isAfterToday() {
    final today = DateTime.now().toDate();
    return this.toDate().isAfter(today);
  }

  bool isToday() {
    final today = DateTime.now().toDate();
    return this.toDate().isAtSameMomentAs(today);
  }

  String dateText() => _dateFormat.format(this);
  String timeText() => _timeFormat.format(this);
}

extension DurationX on Duration {
  String toMS() {
    final seconds = inSeconds.remainder(60);
    final minutes = inMinutes.remainder(60);
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}