import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_failure.freezed.dart';

@freezed
abstract class ContentFailure with _$ContentFailure {
  const factory ContentFailure.unexpected() = Unexpected;
  const factory ContentFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ContentFailure.unableToUpdate() = UnableToUpdate;
}