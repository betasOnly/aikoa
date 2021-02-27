import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_failure.freezed.dart';

@freezed
abstract class ScheduleFailure with _$ScheduleFailure {
  const factory ScheduleFailure.unexpected() = Unexpected;
  const factory ScheduleFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ScheduleFailure.unableToUpdate() = UnableToUpdate;
}