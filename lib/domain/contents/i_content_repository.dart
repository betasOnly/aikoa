import 'dart:collection';

import 'package:dartz/dartz.dart' hide Content;

import 'package:Dayly/domain/core/value_objects.dart';

import 'content.dart';
import 'content_failure.dart';

abstract class IContentRepository {
  Stream<Either<ContentFailure, UnmodifiableListView<ContentItem>>>
      watch(UniqueId pid);
  Future<Either<ContentFailure, UnmodifiableListView<ContentItem>>>
      items(UniqueId pid);
  Future<Either<ContentFailure, UniqueId>> create();
  Future<Either<ContentFailure, UniqueId>> insert(int index, ContentItem item);
  Future<Either<ContentFailure, Unit>> update(ContentItem item);
  Future<Either<ContentFailure, Unit>> delete(ContentItem item);
}
