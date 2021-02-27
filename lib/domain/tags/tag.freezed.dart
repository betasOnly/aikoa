// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagTearOff {
  const _$TagTearOff();

// ignore: unused_element
  _Tag call({@required TagName name}) {
    return _Tag(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Tag = _$TagTearOff();

/// @nodoc
mixin _$Tag {
  TagName get name;

  $TagCopyWith<Tag> get copyWith;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res>;
  $Res call({TagName name});
}

/// @nodoc
class _$TagCopyWithImpl<$Res> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  final Tag _value;
  // ignore: unused_field
  final $Res Function(Tag) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as TagName,
    ));
  }
}

/// @nodoc
abstract class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) then) =
      __$TagCopyWithImpl<$Res>;
  @override
  $Res call({TagName name});
}

/// @nodoc
class __$TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(_Tag _value, $Res Function(_Tag) _then)
      : super(_value, (v) => _then(v as _Tag));

  @override
  _Tag get _value => super._value as _Tag;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Tag(
      name: name == freezed ? _value.name : name as TagName,
    ));
  }
}

/// @nodoc
class _$_Tag implements _Tag {
  const _$_Tag({@required this.name}) : assert(name != null);

  @override
  final TagName name;

  @override
  String toString() {
    return 'Tag(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tag &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$TagCopyWith<_Tag> get copyWith =>
      __$TagCopyWithImpl<_Tag>(this, _$identity);
}

abstract class _Tag implements Tag {
  const factory _Tag({@required TagName name}) = _$_Tag;

  @override
  TagName get name;
  @override
  _$TagCopyWith<_Tag> get copyWith;
}
