import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/value_objects.dart';

part 'content.freezed.dart';

@freezed
abstract class ContentItem with _$ContentItem implements IEntity {
  const factory ContentItem.heading1({UniqueId id, UniqueId pid, String body})
      = Heading1;
  const factory ContentItem.heading2({UniqueId id, UniqueId pid, String body})
      = Heading2;
  const factory ContentItem.paragraph(
      {UniqueId id, UniqueId pid, String body}) = Paragraph;

  factory ContentItem.empty(UniqueId pid) => ContentItem.paragraph(
      id: UniqueId(),
      pid: pid,
      body: '',
    );
}

extension ContentItemX on ContentItem {
  ContentItem convertTo(String typeStr) {
    switch (typeStr) {
      case 'heading1':
        return ContentItem.heading1(id: this.id, pid: this.pid, body: this.body);
        break;
      case 'heading2':
        return ContentItem.heading2(id: this.id, pid: this.pid, body: this.body);
        break;
      default:
        return ContentItem.paragraph(id: this.id, pid: this.pid, body: this.body);
    }
  }

  String get type => this.maybeMap(
    heading1: (_) => 'heading1',
    heading2: (_) => 'heading2',
    orElse: () => '');
}
