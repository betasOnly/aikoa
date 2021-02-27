import 'package:dartz/dartz.dart';

import 'extensions.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<List<T>>, List<T>> validateMaxListLength<T>(
    List<T> input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<int>, int> validateIntNonNegative(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.intNegative(failedValue: input));
  }
}

Either<ValueFailure<Tuple2<DateTime, DateTime>>, Tuple2<DateTime, DateTime>>
    validateTimeSlot(Tuple2<DateTime, DateTime> input) {
      if (input.value2.difference(input.value1).inMinutes >= 0) {
        return right(input);
      } else {
        return left(ValueFailure.endBeforeStart(failedValue: input));
      }
    }


Either<ValueFailure<DateTime>, DateTime>
    validateDeadline(DateTime input) {
      if (input.isAfterToday()) {
        return right(input);
      } else if (input.isToday()) {
        return left(ValueFailure.isDueToday(failedValue: input));
      } else {
        return left(ValueFailure.isOverdue(failedValue: input));
      }
    }