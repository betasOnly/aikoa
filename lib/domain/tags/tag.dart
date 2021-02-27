import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/failures.dart';
import 'package:Dayly/domain/core/value_objects.dart';

part 'tag.freezed.dart';

@freezed
abstract class Tag with _$Tag {
  const factory Tag({
    @required TagName name,
  }) = _Tag;

  factory Tag.empty() => Tag(
    name: TagName(''),
  );
}

extension TagX on Tag {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}