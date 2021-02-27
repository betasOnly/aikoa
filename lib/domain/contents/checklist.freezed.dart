// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChecklistItemTearOff {
  const _$ChecklistItemTearOff();

// ignore: unused_element
  _ChecklistItem call(
      {@required UniqueId id, @required String title, @required bool done}) {
    return _ChecklistItem(
      id: id,
      title: title,
      done: done,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChecklistItem = _$ChecklistItemTearOff();

/// @nodoc
mixin _$ChecklistItem {
  UniqueId get id;
  String get title;
  bool get done;

  $ChecklistItemCopyWith<ChecklistItem> get copyWith;
}

/// @nodoc
abstract class $ChecklistItemCopyWith<$Res> {
  factory $ChecklistItemCopyWith(
          ChecklistItem value, $Res Function(ChecklistItem) then) =
      _$ChecklistItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, String title, bool done});
}

/// @nodoc
class _$ChecklistItemCopyWithImpl<$Res>
    implements $ChecklistItemCopyWith<$Res> {
  _$ChecklistItemCopyWithImpl(this._value, this._then);

  final ChecklistItem _value;
  // ignore: unused_field
  final $Res Function(ChecklistItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChecklistItemCopyWith<$Res>
    implements $ChecklistItemCopyWith<$Res> {
  factory _$ChecklistItemCopyWith(
          _ChecklistItem value, $Res Function(_ChecklistItem) then) =
      __$ChecklistItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String title, bool done});
}

/// @nodoc
class __$ChecklistItemCopyWithImpl<$Res>
    extends _$ChecklistItemCopyWithImpl<$Res>
    implements _$ChecklistItemCopyWith<$Res> {
  __$ChecklistItemCopyWithImpl(
      _ChecklistItem _value, $Res Function(_ChecklistItem) _then)
      : super(_value, (v) => _then(v as _ChecklistItem));

  @override
  _ChecklistItem get _value => super._value as _ChecklistItem;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
  }) {
    return _then(_ChecklistItem(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
class _$_ChecklistItem implements _ChecklistItem {
  const _$_ChecklistItem(
      {@required this.id, @required this.title, @required this.done})
      : assert(id != null),
        assert(title != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final String title;
  @override
  final bool done;

  @override
  String toString() {
    return 'ChecklistItem(id: $id, title: $title, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChecklistItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$ChecklistItemCopyWith<_ChecklistItem> get copyWith =>
      __$ChecklistItemCopyWithImpl<_ChecklistItem>(this, _$identity);
}

abstract class _ChecklistItem implements ChecklistItem {
  const factory _ChecklistItem(
      {@required UniqueId id,
      @required String title,
      @required bool done}) = _$_ChecklistItem;

  @override
  UniqueId get id;
  @override
  String get title;
  @override
  bool get done;
  @override
  _$ChecklistItemCopyWith<_ChecklistItem> get copyWith;
}
