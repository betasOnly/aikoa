part of 'database.dart';

class ChildIdsConverter extends TypeConverter<List<int>, String> {
  const ChildIdsConverter();

  @override
  List<int> mapToDart(String fromDb) {
    return List<int>.from(json.decode(fromDb?? '[]'));
  }

  @override
  String mapToSql(List<int> ids) => ids?.toString();
}