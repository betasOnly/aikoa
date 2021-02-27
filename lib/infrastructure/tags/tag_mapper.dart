import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/tag.dart' as domain;
import 'package:Dayly/infrastructure/core/database.dart';

extension TagDomainX on Tag {
  domain.Tag toDomain() {
    return domain.Tag(name: TagName(name));
  }
}