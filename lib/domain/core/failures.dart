import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.numberTooLarge({
    @required T failedValue,
    @required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.intNegative({
    @required T failedValue,
  }) = IntNegative<T>;
  const factory ValueFailure.endBeforeStart({
    @required T failedValue,
  }) = EndBeforeStart<T>;
  const factory ValueFailure.isDueToday({
    @required T failedValue,
  }) = IsDueToday<T>;
  const factory ValueFailure.isOverdue({
    @required T failedValue,
  }) = IsOverdue<T>;
}