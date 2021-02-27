import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_failure.freezed.dart';

@freezed
abstract class CalendarFailure with _$CalendarFailure {
  const factory CalendarFailure.unexpected() = Unexpected;
  const factory CalendarFailure.noCalendarConnected() = NoCalendarConnected;
  const factory CalendarFailure.insufficientPermissions() = InsufficientPermissions;
  const factory CalendarFailure.unableToUpdate() = UnableToUpdate;
}