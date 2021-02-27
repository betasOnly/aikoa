// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReminderTearOff {
  const _$ReminderTearOff();

// ignore: unused_element
  _Reminder call({@required UniqueId id, @required MinutesBefore minutes}) {
    return _Reminder(
      id: id,
      minutes: minutes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Reminder = _$ReminderTearOff();

/// @nodoc
mixin _$Reminder {
  UniqueId get id;
  MinutesBefore get minutes;

  $ReminderCopyWith<Reminder> get copyWith;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res>;
  $Res call({UniqueId id, MinutesBefore minutes});
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res> implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  final Reminder _value;
  // ignore: unused_field
  final $Res Function(Reminder) _then;

  @override
  $Res call({
    Object id = freezed,
    Object minutes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      minutes: minutes == freezed ? _value.minutes : minutes as MinutesBefore,
    ));
  }
}

/// @nodoc
abstract class _$ReminderCopyWith<$Res> implements $ReminderCopyWith<$Res> {
  factory _$ReminderCopyWith(_Reminder value, $Res Function(_Reminder) then) =
      __$ReminderCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, MinutesBefore minutes});
}

/// @nodoc
class __$ReminderCopyWithImpl<$Res> extends _$ReminderCopyWithImpl<$Res>
    implements _$ReminderCopyWith<$Res> {
  __$ReminderCopyWithImpl(_Reminder _value, $Res Function(_Reminder) _then)
      : super(_value, (v) => _then(v as _Reminder));

  @override
  _Reminder get _value => super._value as _Reminder;

  @override
  $Res call({
    Object id = freezed,
    Object minutes = freezed,
  }) {
    return _then(_Reminder(
      id: id == freezed ? _value.id : id as UniqueId,
      minutes: minutes == freezed ? _value.minutes : minutes as MinutesBefore,
    ));
  }
}

/// @nodoc
class _$_Reminder with DiagnosticableTreeMixin implements _Reminder {
  const _$_Reminder({@required this.id, @required this.minutes})
      : assert(id != null),
        assert(minutes != null);

  @override
  final UniqueId id;
  @override
  final MinutesBefore minutes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reminder(id: $id, minutes: $minutes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reminder'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('minutes', minutes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reminder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality().equals(other.minutes, minutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(minutes);

  @override
  _$ReminderCopyWith<_Reminder> get copyWith =>
      __$ReminderCopyWithImpl<_Reminder>(this, _$identity);
}

abstract class _Reminder implements Reminder {
  const factory _Reminder(
      {@required UniqueId id, @required MinutesBefore minutes}) = _$_Reminder;

  @override
  UniqueId get id;
  @override
  MinutesBefore get minutes;
  @override
  _$ReminderCopyWith<_Reminder> get copyWith;
}
