import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_failure.freezed.dart';

@freezed
abstract class TagFailure with _$TagFailure {
  const factory TagFailure.empty() = Empty;
  const factory TagFailure.unexpected() = Unexpected;
  const factory TagFailure.unableToUpdate() = UnableToUpdate;
}