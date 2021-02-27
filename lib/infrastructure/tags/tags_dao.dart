part of '../core/database.dart';

@UseDao(tables: [Tags])
class TagsDao extends DatabaseAccessor<AppDatabase> with _$TagsDaoMixin {
  TagsDao(AppDatabase db): super(db);

  Stream<List<Tag>> watchAll() => select(tags).watch();

  Future<void> insert(Insertable<Tag> tag) => into(tags).insert(tag);

  Future<void> remove(Insertable<Tag> tag) => delete(tags).delete(tag);

  Future<void> updateTag(Insertable<Tag> tag) => update(tags).replace(tag);
}