import 'package:dartz/dartz.dart';

import 'package:Dayly/domain/core/failures.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/core/value_validators.dart';

class EventTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EventTitle(String input) {
    assert(input != null);
    return EventTitle._(validateStringNotEmpty(input));
  }

  const EventTitle._(this.value);
}

class EventBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EventBody(String input) {
    assert(input != null);
    return EventBody._(validateStringNotEmpty(input));
  }

  const EventBody._(this.value);
}

class MinutesBefore extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory MinutesBefore(int input) {
    assert(input != null);
    return MinutesBefore._(validateIntNonNegative(input));
  }

  const MinutesBefore._(this.value);

  int get minutes => value.fold((f) => f.failedValue, id);

  int get inWeeks => minutes ~/ (60 * 24 * 7);
  int get inDays => (minutes ~/ (60 * 24)) % 7;
  int get inHours => (minutes ~/ 60) % 24;
  int get inMinutes => minutes % 60;
}
