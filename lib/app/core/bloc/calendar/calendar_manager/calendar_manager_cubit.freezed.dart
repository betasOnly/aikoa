// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calendar_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalendarManagerStateTearOff {
  const _$CalendarManagerStateTearOff();

// ignore: unused_element
  _CalendarManagerState call(
      {@required Option<Calendar> connected,
      @required Option<List<Calendar>> calendars,
      @required Option<Either<CalendarFailure, Unit>> failureOrSuccessOption}) {
    return _CalendarManagerState(
      connected: connected,
      calendars: calendars,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalendarManagerState = _$CalendarManagerStateTearOff();

/// @nodoc
mixin _$CalendarManagerState {
  Option<Calendar> get connected;
  Option<List<Calendar>> get calendars;
  Option<Either<CalendarFailure, Unit>> get failureOrSuccessOption;

  $CalendarManagerStateCopyWith<CalendarManagerState> get copyWith;
}

/// @nodoc
abstract class $CalendarManagerStateCopyWith<$Res> {
  factory $CalendarManagerStateCopyWith(CalendarManagerState value,
          $Res Function(CalendarManagerState) then) =
      _$CalendarManagerStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Calendar> connected,
      Option<List<Calendar>> calendars,
      Option<Either<CalendarFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$CalendarManagerStateCopyWithImpl<$Res>
    implements $CalendarManagerStateCopyWith<$Res> {
  _$CalendarManagerStateCopyWithImpl(this._value, this._then);

  final CalendarManagerState _value;
  // ignore: unused_field
  final $Res Function(CalendarManagerState) _then;

  @override
  $Res call({
    Object connected = freezed,
    Object calendars = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      connected: connected == freezed
          ? _value.connected
          : connected as Option<Calendar>,
      calendars: calendars == freezed
          ? _value.calendars
          : calendars as Option<List<Calendar>>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CalendarManagerStateCopyWith<$Res>
    implements $CalendarManagerStateCopyWith<$Res> {
  factory _$CalendarManagerStateCopyWith(_CalendarManagerState value,
          $Res Function(_CalendarManagerState) then) =
      __$CalendarManagerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Calendar> connected,
      Option<List<Calendar>> calendars,
      Option<Either<CalendarFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$CalendarManagerStateCopyWithImpl<$Res>
    extends _$CalendarManagerStateCopyWithImpl<$Res>
    implements _$CalendarManagerStateCopyWith<$Res> {
  __$CalendarManagerStateCopyWithImpl(
      _CalendarManagerState _value, $Res Function(_CalendarManagerState) _then)
      : super(_value, (v) => _then(v as _CalendarManagerState));

  @override
  _CalendarManagerState get _value => super._value as _CalendarManagerState;

  @override
  $Res call({
    Object connected = freezed,
    Object calendars = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_CalendarManagerState(
      connected: connected == freezed
          ? _value.connected
          : connected as Option<Calendar>,
      calendars: calendars == freezed
          ? _value.calendars
          : calendars as Option<List<Calendar>>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CalendarManagerState implements _CalendarManagerState {
  _$_CalendarManagerState(
      {@required this.connected,
      @required this.calendars,
      @required this.failureOrSuccessOption})
      : assert(connected != null),
        assert(calendars != null),
        assert(failureOrSuccessOption != null);

  @override
  final Option<Calendar> connected;
  @override
  final Option<List<Calendar>> calendars;
  @override
  final Option<Either<CalendarFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'CalendarManagerState(connected: $connected, calendars: $calendars, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalendarManagerState &&
            (identical(other.connected, connected) ||
                const DeepCollectionEquality()
                    .equals(other.connected, connected)) &&
            (identical(other.calendars, calendars) ||
                const DeepCollectionEquality()
                    .equals(other.calendars, calendars)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connected) ^
      const DeepCollectionEquality().hash(calendars) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$CalendarManagerStateCopyWith<_CalendarManagerState> get copyWith =>
      __$CalendarManagerStateCopyWithImpl<_CalendarManagerState>(
          this, _$identity);
}

abstract class _CalendarManagerState implements CalendarManagerState {
  factory _CalendarManagerState(
          {@required
              Option<Calendar> connected,
          @required
              Option<List<Calendar>> calendars,
          @required
              Option<Either<CalendarFailure, Unit>> failureOrSuccessOption}) =
      _$_CalendarManagerState;

  @override
  Option<Calendar> get connected;
  @override
  Option<List<Calendar>> get calendars;
  @override
  Option<Either<CalendarFailure, Unit>> get failureOrSuccessOption;
  @override
  _$CalendarManagerStateCopyWith<_CalendarManagerState> get copyWith;
}
