import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'package:Dayly/app/core/icons.dart';

import 'errors.dart';
import 'extensions.dart';
import 'failures.dart';
import 'value_validators.dart';

final DateFormat dateFormat = DateFormat.Hm();

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T Function(ValueFailure<T>) orElse) {
    return value.fold(orElse, id);
  }

  B fold<B>(B Function(ValueFailure<T>) ifLeft, B Function(T) ifRight) {
    return value.fold(ifLeft, ifRight);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.empty() {
    return UniqueId._(left(ValueFailure.empty(failedValue: '')));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }

  factory UniqueId.fromUniqueInteger(int uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId.toString()),
    );
  }

  const UniqueId._(this.value);

  int toInt() => value.fold(
    (l) => -1,
    (r) => int.parse(r, onError: (_) => -1),
  );
}

class TimeSlot extends ValueObject<Tuple2<DateTime, DateTime>> {
  @override
  final Either<ValueFailure<Tuple2<DateTime, DateTime>>,
      Tuple2<DateTime, DateTime>> value;

  factory TimeSlot(DateTime from, DateTime to) {
    return TimeSlot._(validateTimeSlot(Tuple2(from, to)));
  }

  factory TimeSlot.next([DateTime after]) {
    final start = (after?? DateTime.now()).toInterval();
    return TimeSlot(start, start.add(Duration(hours:  2)));
  }

  const TimeSlot._(this.value);

  Duration get duration {
    return value.fold(
      (failure) => Duration(),
      (slot) => slot.value2.difference(slot.value1)
    );
  }

  DateTime get start {
    return value.fold(
      (failure) => failure.failedValue.value1,
      (slot) => slot.value1
    );
  }

  DateTime get end {
    return value.fold(
      (failure) => null,
      (slot) => slot.value2
    );
  }

  bool isAt(DateTime day) {
    return start.toDate().difference(day).inDays == 0;
  }

  String toText() {
    return '${dateFormat.format(start)} - ${dateFormat.format(end)}';
  }
}

class Deadline extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory Deadline(DateTime input) {
    assert(input != null);
    return Deadline._(
      validateDeadline(input)
    );
  }

  const Deadline._(this.value);

  String toText() => value.fold(
    (failure) => failure.maybeMap(
      isDueToday: (today) => 'Today',
      orElse: () => DateFormat.yMMMd().format(failure.failedValue)
    ),
    (date) => DateFormat.yMMMd().format(date)
  );

  Icon toIcon({Color defaultColor, Color errorColor, Color warningColor,
    double size}) => value.fold(
      (f) => f.maybeMap(
        isDueToday: (_) => Icon(
          DaylyIcons.today,
          color: warningColor,
          size: size,
        ),
        isOverdue: (_) => Icon(
          DaylyIcons.overdue,
          color: errorColor,
          size: size,),
        orElse: () => Icon(DaylyIcons.deadline, size: size,)),
      (r) => Icon(DaylyIcons.deadline, color: defaultColor, size: size,)
    );
}

class TagName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory TagName(String input) {
    assert(input != null);
    return TagName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TagName._(this.value);
}

class CardTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 40;

  factory CardTitle(String input) {
    assert(input != null);
    return CardTitle._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const CardTitle._(this.value);
}