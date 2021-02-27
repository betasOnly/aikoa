// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

// ignore: unused_element
  _Task call(
      {@required UniqueId id,
      @required CardTitle title,
      @required Option<Tag> tag,
      @required Option<Deadline> deadline,
      @required Option<UniqueId> child}) {
    return _Task(
      id: id,
      title: title,
      tag: tag,
      deadline: deadline,
      child: child,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  UniqueId get id;
  CardTitle get title;
  Option<Tag> get tag;
  Option<Deadline> get deadline;
  Option<UniqueId> get child;

  $TaskCopyWith<Task> get copyWith;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      CardTitle title,
      Option<Tag> tag,
      Option<Deadline> deadline,
      Option<UniqueId> child});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tag = freezed,
    Object deadline = freezed,
    Object child = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CardTitle,
      tag: tag == freezed ? _value.tag : tag as Option<Tag>,
      deadline:
          deadline == freezed ? _value.deadline : deadline as Option<Deadline>,
      child: child == freezed ? _value.child : child as Option<UniqueId>,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      CardTitle title,
      Option<Tag> tag,
      Option<Deadline> deadline,
      Option<UniqueId> child});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tag = freezed,
    Object deadline = freezed,
    Object child = freezed,
  }) {
    return _then(_Task(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CardTitle,
      tag: tag == freezed ? _value.tag : tag as Option<Tag>,
      deadline:
          deadline == freezed ? _value.deadline : deadline as Option<Deadline>,
      child: child == freezed ? _value.child : child as Option<UniqueId>,
    ));
  }
}

/// @nodoc
class _$_Task with DiagnosticableTreeMixin implements _Task {
  const _$_Task(
      {@required this.id,
      @required this.title,
      @required this.tag,
      @required this.deadline,
      @required this.child})
      : assert(id != null),
        assert(title != null),
        assert(tag != null),
        assert(deadline != null),
        assert(child != null);

  @override
  final UniqueId id;
  @override
  final CardTitle title;
  @override
  final Option<Tag> tag;
  @override
  final Option<Deadline> deadline;
  @override
  final Option<UniqueId> child;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, title: $title, tag: $tag, deadline: $deadline, child: $child)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('deadline', deadline))
      ..add(DiagnosticsProperty('child', child));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)) &&
            (identical(other.child, child) ||
                const DeepCollectionEquality().equals(other.child, child)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(deadline) ^
      const DeepCollectionEquality().hash(child);

  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {@required UniqueId id,
      @required CardTitle title,
      @required Option<Tag> tag,
      @required Option<Deadline> deadline,
      @required Option<UniqueId> child}) = _$_Task;

  @override
  UniqueId get id;
  @override
  CardTitle get title;
  @override
  Option<Tag> get tag;
  @override
  Option<Deadline> get deadline;
  @override
  Option<UniqueId> get child;
  @override
  _$TaskCopyWith<_Task> get copyWith;
}
