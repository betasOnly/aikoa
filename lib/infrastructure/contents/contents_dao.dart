part of '../core/database.dart';

@UseDao(tables: [Contents, ContentItems])
class ContentsDao extends DatabaseAccessor<AppDatabase>
    with _$ContentsDaoMixin {
  ContentsDao(AppDatabase db) : super(db);

  Stream<List<ContentItem>> watchContent(int id) async* {
    final childsStream =
        (select(contents)..where((c) => c.id.equals(id))).watchSingle();

    yield* childsStream.asyncMap((content) async {
      if (content != null) {
        return (select(contentItems)..where((i) => i.id.isIn(content.childs)))
            .get();
      } else {
        return [];
      }
    });
  }

  Future<List<ContentItem>> getItems(int id) async {
    final childIds = (await (select(contents)
      ..where((c) => c.id.equals(id)))
      .getSingle()).childs;

    final childs = await Future.wait(childIds.map((uid) {
      return (select(contentItems)..where((i) => i.id.equals(uid))).getSingle();
    }));

    return childs;
  }

  Future<int> create() async {
    final uid = await into(contents).insert(
      ContentsCompanion.insert(id: Value.absent()));
    await insert(0, ContentItemsCompanion.insert(pid: Value(uid)));
    return uid;
  }

  Future<bool> updateContent(Insertable<ContentItem> item) {
    return update(contentItems).replace(item);
  }

  Future<int> insert(index, ContentItemsCompanion item) async {
    final content = await (select(contents)
          ..where((c) => c.id.equals(item.pid.value)))
        .getSingle();
    final uid = await into(contentItems).insert(item);
    update(contents).replace(
        content.copyWith(childs: (content.childs?? [])..insert(index, uid)));
    return uid;
  }

  Future<int> remove(ContentItemsCompanion item) async {
    final content = await (select(contents)
          ..where((c) => c.id.equals(item.pid.value)))
        .getSingle();
    update(contents)
        .replace(content.copyWith(childs: content.childs..remove(item.id.value)));
    return delete(contentItems).delete(item);
  }
}
