import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/value_objects.dart';

import 'value_objects.dart';

part 'reminder.freezed.dart';

@freezed
abstract class Reminder with _$Reminder implements IEntity {
  const factory Reminder({
    @required UniqueId id,
    @required MinutesBefore minutes,
  }) = _Reminder;
}

extension ReminderX on Reminder {
  int get inMinutes => minutes.inMinutes;

  String asText() {
    String text = '';
    final int _weeks = minutes.inWeeks;
    final int _days = minutes.inDays;
    final int _hours = minutes.inHours;
    final int _minutes = minutes.inMinutes;
    
    if (_weeks > 0) {
      text += _weeks == 1 ? '1 week ' : '$_weeks weeks ';
    }
    if (_days > 0) {
      text += _days == 1 ? '1 day ' : '$_days days ';
    }
    if (_hours > 0) {
      text += _hours == 1? '1 hour ' : '$_hours hours ';
    }
    if (_minutes > 0) {
      text += _minutes == 1 ? '1 minute ' : '$_minutes minutes ';
    }
    return text + 'before';
  }
}