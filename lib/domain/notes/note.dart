import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/failures.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/tag.dart';

part 'note.freezed.dart';

@freezed
abstract class Note with _$Note implements IEntity {
  const factory Note({
    @required UniqueId id,
    @required CardTitle title,
    @required Option<Tag> tag,
    @required Option<UniqueId> child,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        title: CardTitle(''),
        tag: none(),
        child: none()
      );
}

extension NoteX on Note {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
