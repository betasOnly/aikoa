// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timebox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimeBoxTearOff {
  const _$TimeBoxTearOff();

// ignore: unused_element
  _TimeBox call(
      {@required UniqueId id,
      @required Either<DateTime, TimeSlot> timeSlot,
      @required Task task,
      @required bool focus,
      @required bool done}) {
    return _TimeBox(
      id: id,
      timeSlot: timeSlot,
      task: task,
      focus: focus,
      done: done,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimeBox = _$TimeBoxTearOff();

/// @nodoc
mixin _$TimeBox {
  UniqueId get id;
  Either<DateTime, TimeSlot> get timeSlot;
  Task get task;
  bool get focus;
  bool get done;

  $TimeBoxCopyWith<TimeBox> get copyWith;
}

/// @nodoc
abstract class $TimeBoxCopyWith<$Res> {
  factory $TimeBoxCopyWith(TimeBox value, $Res Function(TimeBox) then) =
      _$TimeBoxCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Either<DateTime, TimeSlot> timeSlot,
      Task task,
      bool focus,
      bool done});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TimeBoxCopyWithImpl<$Res> implements $TimeBoxCopyWith<$Res> {
  _$TimeBoxCopyWithImpl(this._value, this._then);

  final TimeBox _value;
  // ignore: unused_field
  final $Res Function(TimeBox) _then;

  @override
  $Res call({
    Object id = freezed,
    Object timeSlot = freezed,
    Object task = freezed,
    Object focus = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      timeSlot: timeSlot == freezed
          ? _value.timeSlot
          : timeSlot as Either<DateTime, TimeSlot>,
      task: task == freezed ? _value.task : task as Task,
      focus: focus == freezed ? _value.focus : focus as bool,
      done: done == freezed ? _value.done : done as bool,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    if (_value.task == null) {
      return null;
    }
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$TimeBoxCopyWith<$Res> implements $TimeBoxCopyWith<$Res> {
  factory _$TimeBoxCopyWith(_TimeBox value, $Res Function(_TimeBox) then) =
      __$TimeBoxCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Either<DateTime, TimeSlot> timeSlot,
      Task task,
      bool focus,
      bool done});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$TimeBoxCopyWithImpl<$Res> extends _$TimeBoxCopyWithImpl<$Res>
    implements _$TimeBoxCopyWith<$Res> {
  __$TimeBoxCopyWithImpl(_TimeBox _value, $Res Function(_TimeBox) _then)
      : super(_value, (v) => _then(v as _TimeBox));

  @override
  _TimeBox get _value => super._value as _TimeBox;

  @override
  $Res call({
    Object id = freezed,
    Object timeSlot = freezed,
    Object task = freezed,
    Object focus = freezed,
    Object done = freezed,
  }) {
    return _then(_TimeBox(
      id: id == freezed ? _value.id : id as UniqueId,
      timeSlot: timeSlot == freezed
          ? _value.timeSlot
          : timeSlot as Either<DateTime, TimeSlot>,
      task: task == freezed ? _value.task : task as Task,
      focus: focus == freezed ? _value.focus : focus as bool,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
class _$_TimeBox with DiagnosticableTreeMixin implements _TimeBox {
  const _$_TimeBox(
      {@required this.id,
      @required this.timeSlot,
      @required this.task,
      @required this.focus,
      @required this.done})
      : assert(id != null),
        assert(timeSlot != null),
        assert(task != null),
        assert(focus != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final Either<DateTime, TimeSlot> timeSlot;
  @override
  final Task task;
  @override
  final bool focus;
  @override
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeBox(id: $id, timeSlot: $timeSlot, task: $task, focus: $focus, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeBox'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('timeSlot', timeSlot))
      ..add(DiagnosticsProperty('task', task))
      ..add(DiagnosticsProperty('focus', focus))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeBox &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timeSlot, timeSlot) ||
                const DeepCollectionEquality()
                    .equals(other.timeSlot, timeSlot)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.focus, focus) ||
                const DeepCollectionEquality().equals(other.focus, focus)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timeSlot) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(focus) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$TimeBoxCopyWith<_TimeBox> get copyWith =>
      __$TimeBoxCopyWithImpl<_TimeBox>(this, _$identity);
}

abstract class _TimeBox implements TimeBox {
  const factory _TimeBox(
      {@required UniqueId id,
      @required Either<DateTime, TimeSlot> timeSlot,
      @required Task task,
      @required bool focus,
      @required bool done}) = _$_TimeBox;

  @override
  UniqueId get id;
  @override
  Either<DateTime, TimeSlot> get timeSlot;
  @override
  Task get task;
  @override
  bool get focus;
  @override
  bool get done;
  @override
  _$TimeBoxCopyWith<_TimeBox> get copyWith;
}
