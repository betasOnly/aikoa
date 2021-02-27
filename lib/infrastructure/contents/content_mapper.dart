import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/contents/content.dart' as domain;
import 'package:Dayly/infrastructure/core/database.dart';

extension ContentItemDomainX on ContentItem {
  domain.ContentItem toDomain() {
    return domain.ContentItem.paragraph(
      id: UniqueId.fromUniqueInteger(id),
      pid: UniqueId.fromUniqueInteger(pid),
      body: value
    ).convertTo(type);
  }
}