// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

// ignore: unused_element
  _Note call(
      {@required UniqueId id,
      @required CardTitle title,
      @required Option<Tag> tag,
      @required Option<UniqueId> child}) {
    return _Note(
      id: id,
      title: title,
      tag: tag,
      child: child,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  UniqueId get id;
  CardTitle get title;
  Option<Tag> get tag;
  Option<UniqueId> get child;

  $NoteCopyWith<Note> get copyWith;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, CardTitle title, Option<Tag> tag, Option<UniqueId> child});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tag = freezed,
    Object child = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CardTitle,
      tag: tag == freezed ? _value.tag : tag as Option<Tag>,
      child: child == freezed ? _value.child : child as Option<UniqueId>,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, CardTitle title, Option<Tag> tag, Option<UniqueId> child});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tag = freezed,
    Object child = freezed,
  }) {
    return _then(_Note(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CardTitle,
      tag: tag == freezed ? _value.tag : tag as Option<Tag>,
      child: child == freezed ? _value.child : child as Option<UniqueId>,
    ));
  }
}

/// @nodoc
class _$_Note with DiagnosticableTreeMixin implements _Note {
  const _$_Note(
      {@required this.id,
      @required this.title,
      @required this.tag,
      @required this.child})
      : assert(id != null),
        assert(title != null),
        assert(tag != null),
        assert(child != null);

  @override
  final UniqueId id;
  @override
  final CardTitle title;
  @override
  final Option<Tag> tag;
  @override
  final Option<UniqueId> child;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Note(id: $id, title: $title, tag: $tag, child: $child)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Note'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('child', child));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.child, child) ||
                const DeepCollectionEquality().equals(other.child, child)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(child);

  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note implements Note {
  const factory _Note(
      {@required UniqueId id,
      @required CardTitle title,
      @required Option<Tag> tag,
      @required Option<UniqueId> child}) = _$_Note;

  @override
  UniqueId get id;
  @override
  CardTitle get title;
  @override
  Option<Tag> get tag;
  @override
  Option<UniqueId> get child;
  @override
  _$NoteCopyWith<_Note> get copyWith;
}
