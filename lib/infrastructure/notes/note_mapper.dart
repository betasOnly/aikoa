import 'package:dartz/dartz.dart' hide id;

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/notes/note.dart' as domain;
import 'package:Dayly/infrastructure/core/database.dart' hide Tag;

extension NoteDomainX on Note {
  domain.Note toDomain() {
    return domain.Note(
      id: UniqueId.fromUniqueInteger(id),
      title: CardTitle(title),
      tag: category != null
        ? some(Tag(name: TagName(category)))
        : none(),
      child: child != null ? some(UniqueId.fromUniqueInteger(child)) : none()
    );
  }
}