import 'dart:collection';

import 'package:dartz/dartz.dart';

import 'tag.dart';
import 'tag_failure.dart';

abstract class ITagRepository {
  Stream<Either<TagFailure, UnmodifiableListView<Tag>>> watchAll();
  Future<Either<TagFailure, Unit>> create(Tag tag);
  Future<Either<TagFailure, Unit>> update(Tag tag);
  Future<Either<TagFailure, Unit>> delete(Tag tag);
}