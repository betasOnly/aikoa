// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pomodoro_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PomodoroEventTearOff {
  const _$PomodoroEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _Tick tick(int ticks) {
    return _Tick(
      ticks,
    );
  }

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _BreakStarted breakStarted() {
    return const _BreakStarted();
  }

// ignore: unused_element
  _Paused paused() {
    return const _Paused();
  }

// ignore: unused_element
  _Resumed resumed() {
    return const _Resumed();
  }

// ignore: unused_element
  _Reseted reseted() {
    return const _Reseted();
  }

// ignore: unused_element
  _FocusDurationChanged focusDurationChanged(Duration duration) {
    return _FocusDurationChanged(
      duration,
    );
  }

// ignore: unused_element
  _ShortBreakDurationChanged shortBreakDurationChanged(Duration duration) {
    return _ShortBreakDurationChanged(
      duration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PomodoroEvent = _$PomodoroEventTearOff();

/// @nodoc
mixin _$PomodoroEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PomodoroEventCopyWith<$Res> {
  factory $PomodoroEventCopyWith(
          PomodoroEvent value, $Res Function(PomodoroEvent) then) =
      _$PomodoroEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroEventCopyWithImpl<$Res>
    implements $PomodoroEventCopyWith<$Res> {
  _$PomodoroEventCopyWithImpl(this._value, this._then);

  final PomodoroEvent _value;
  // ignore: unused_field
  final $Res Function(PomodoroEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'PomodoroEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PomodoroEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$TickCopyWith<$Res> {
  factory _$TickCopyWith(_Tick value, $Res Function(_Tick) then) =
      __$TickCopyWithImpl<$Res>;
  $Res call({int ticks});
}

/// @nodoc
class __$TickCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$TickCopyWith<$Res> {
  __$TickCopyWithImpl(_Tick _value, $Res Function(_Tick) _then)
      : super(_value, (v) => _then(v as _Tick));

  @override
  _Tick get _value => super._value as _Tick;

  @override
  $Res call({
    Object ticks = freezed,
  }) {
    return _then(_Tick(
      ticks == freezed ? _value.ticks : ticks as int,
    ));
  }
}

/// @nodoc
class _$_Tick implements _Tick {
  const _$_Tick(this.ticks) : assert(ticks != null);

  @override
  final int ticks;

  @override
  String toString() {
    return 'PomodoroEvent.tick(ticks: $ticks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tick &&
            (identical(other.ticks, ticks) ||
                const DeepCollectionEquality().equals(other.ticks, ticks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ticks);

  @override
  _$TickCopyWith<_Tick> get copyWith =>
      __$TickCopyWithImpl<_Tick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return tick(ticks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tick != null) {
      return tick(ticks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements PomodoroEvent {
  const factory _Tick(int ticks) = _$_Tick;

  int get ticks;
  _$TickCopyWith<_Tick> get copyWith;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PomodoroEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PomodoroEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$BreakStartedCopyWith<$Res> {
  factory _$BreakStartedCopyWith(
          _BreakStarted value, $Res Function(_BreakStarted) then) =
      __$BreakStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$BreakStartedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$BreakStartedCopyWith<$Res> {
  __$BreakStartedCopyWithImpl(
      _BreakStarted _value, $Res Function(_BreakStarted) _then)
      : super(_value, (v) => _then(v as _BreakStarted));

  @override
  _BreakStarted get _value => super._value as _BreakStarted;
}

/// @nodoc
class _$_BreakStarted implements _BreakStarted {
  const _$_BreakStarted();

  @override
  String toString() {
    return 'PomodoroEvent.breakStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BreakStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return breakStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (breakStarted != null) {
      return breakStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return breakStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (breakStarted != null) {
      return breakStarted(this);
    }
    return orElse();
  }
}

abstract class _BreakStarted implements PomodoroEvent {
  const factory _BreakStarted() = _$_BreakStarted;
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;
}

/// @nodoc
class _$_Paused implements _Paused {
  const _$_Paused();

  @override
  String toString() {
    return 'PomodoroEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements PomodoroEvent {
  const factory _Paused() = _$_Paused;
}

/// @nodoc
abstract class _$ResumedCopyWith<$Res> {
  factory _$ResumedCopyWith(_Resumed value, $Res Function(_Resumed) then) =
      __$ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResumedCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$ResumedCopyWith<$Res> {
  __$ResumedCopyWithImpl(_Resumed _value, $Res Function(_Resumed) _then)
      : super(_value, (v) => _then(v as _Resumed));

  @override
  _Resumed get _value => super._value as _Resumed;
}

/// @nodoc
class _$_Resumed implements _Resumed {
  const _$_Resumed();

  @override
  String toString() {
    return 'PomodoroEvent.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed implements PomodoroEvent {
  const factory _Resumed() = _$_Resumed;
}

/// @nodoc
abstract class _$ResetedCopyWith<$Res> {
  factory _$ResetedCopyWith(_Reseted value, $Res Function(_Reseted) then) =
      __$ResetedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetedCopyWithImpl<$Res> extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$ResetedCopyWith<$Res> {
  __$ResetedCopyWithImpl(_Reseted _value, $Res Function(_Reseted) _then)
      : super(_value, (v) => _then(v as _Reseted));

  @override
  _Reseted get _value => super._value as _Reseted;
}

/// @nodoc
class _$_Reseted implements _Reseted {
  const _$_Reseted();

  @override
  String toString() {
    return 'PomodoroEvent.reseted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reseted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return reseted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reseted != null) {
      return reseted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return reseted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reseted != null) {
      return reseted(this);
    }
    return orElse();
  }
}

abstract class _Reseted implements PomodoroEvent {
  const factory _Reseted() = _$_Reseted;
}

/// @nodoc
abstract class _$FocusDurationChangedCopyWith<$Res> {
  factory _$FocusDurationChangedCopyWith(_FocusDurationChanged value,
          $Res Function(_FocusDurationChanged) then) =
      __$FocusDurationChangedCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$FocusDurationChangedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$FocusDurationChangedCopyWith<$Res> {
  __$FocusDurationChangedCopyWithImpl(
      _FocusDurationChanged _value, $Res Function(_FocusDurationChanged) _then)
      : super(_value, (v) => _then(v as _FocusDurationChanged));

  @override
  _FocusDurationChanged get _value => super._value as _FocusDurationChanged;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(_FocusDurationChanged(
      duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

/// @nodoc
class _$_FocusDurationChanged implements _FocusDurationChanged {
  const _$_FocusDurationChanged(this.duration) : assert(duration != null);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PomodoroEvent.focusDurationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FocusDurationChanged &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  _$FocusDurationChangedCopyWith<_FocusDurationChanged> get copyWith =>
      __$FocusDurationChangedCopyWithImpl<_FocusDurationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return focusDurationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusDurationChanged != null) {
      return focusDurationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return focusDurationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusDurationChanged != null) {
      return focusDurationChanged(this);
    }
    return orElse();
  }
}

abstract class _FocusDurationChanged implements PomodoroEvent {
  const factory _FocusDurationChanged(Duration duration) =
      _$_FocusDurationChanged;

  Duration get duration;
  _$FocusDurationChangedCopyWith<_FocusDurationChanged> get copyWith;
}

/// @nodoc
abstract class _$ShortBreakDurationChangedCopyWith<$Res> {
  factory _$ShortBreakDurationChangedCopyWith(_ShortBreakDurationChanged value,
          $Res Function(_ShortBreakDurationChanged) then) =
      __$ShortBreakDurationChangedCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$ShortBreakDurationChangedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$ShortBreakDurationChangedCopyWith<$Res> {
  __$ShortBreakDurationChangedCopyWithImpl(_ShortBreakDurationChanged _value,
      $Res Function(_ShortBreakDurationChanged) _then)
      : super(_value, (v) => _then(v as _ShortBreakDurationChanged));

  @override
  _ShortBreakDurationChanged get _value =>
      super._value as _ShortBreakDurationChanged;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(_ShortBreakDurationChanged(
      duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

/// @nodoc
class _$_ShortBreakDurationChanged implements _ShortBreakDurationChanged {
  const _$_ShortBreakDurationChanged(this.duration) : assert(duration != null);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PomodoroEvent.shortBreakDurationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortBreakDurationChanged &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  _$ShortBreakDurationChangedCopyWith<_ShortBreakDurationChanged>
      get copyWith =>
          __$ShortBreakDurationChangedCopyWithImpl<_ShortBreakDurationChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult tick(int ticks),
    @required TResult started(),
    @required TResult breakStarted(),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult reseted(),
    @required TResult focusDurationChanged(Duration duration),
    @required TResult shortBreakDurationChanged(Duration duration),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return shortBreakDurationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult tick(int ticks),
    TResult started(),
    TResult breakStarted(),
    TResult paused(),
    TResult resumed(),
    TResult reseted(),
    TResult focusDurationChanged(Duration duration),
    TResult shortBreakDurationChanged(Duration duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreakDurationChanged != null) {
      return shortBreakDurationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult tick(_Tick value),
    @required TResult started(_Started value),
    @required TResult breakStarted(_BreakStarted value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult reseted(_Reseted value),
    @required TResult focusDurationChanged(_FocusDurationChanged value),
    @required
        TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
  }) {
    assert(initialized != null);
    assert(tick != null);
    assert(started != null);
    assert(breakStarted != null);
    assert(paused != null);
    assert(resumed != null);
    assert(reseted != null);
    assert(focusDurationChanged != null);
    assert(shortBreakDurationChanged != null);
    return shortBreakDurationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult tick(_Tick value),
    TResult started(_Started value),
    TResult breakStarted(_BreakStarted value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult reseted(_Reseted value),
    TResult focusDurationChanged(_FocusDurationChanged value),
    TResult shortBreakDurationChanged(_ShortBreakDurationChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreakDurationChanged != null) {
      return shortBreakDurationChanged(this);
    }
    return orElse();
  }
}

abstract class _ShortBreakDurationChanged implements PomodoroEvent {
  const factory _ShortBreakDurationChanged(Duration duration) =
      _$_ShortBreakDurationChanged;

  Duration get duration;
  _$ShortBreakDurationChangedCopyWith<_ShortBreakDurationChanged> get copyWith;
}

/// @nodoc
class _$PomodoroStateTearOff {
  const _$PomodoroStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Focused focused(Duration duration, double percentage) {
    return _Focused(
      duration,
      percentage,
    );
  }

// ignore: unused_element
  _ShortBreak shortBreak(Duration duration, double percentage) {
    return _ShortBreak(
      duration,
      percentage,
    );
  }

// ignore: unused_element
  _FocusPaused focusPaused(Duration duration, double percentage) {
    return _FocusPaused(
      duration,
      percentage,
    );
  }

// ignore: unused_element
  _BreakPaused breakPaused(Duration duration, double percentage) {
    return _BreakPaused(
      duration,
      percentage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PomodoroState = _$PomodoroStateTearOff();

/// @nodoc
mixin _$PomodoroState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PomodoroStateCopyWith<$Res> {
  factory $PomodoroStateCopyWith(
          PomodoroState value, $Res Function(PomodoroState) then) =
      _$PomodoroStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroStateCopyWithImpl<$Res>
    implements $PomodoroStateCopyWith<$Res> {
  _$PomodoroStateCopyWithImpl(this._value, this._then);

  final PomodoroState _value;
  // ignore: unused_field
  final $Res Function(PomodoroState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PomodoroState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PomodoroState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FocusedCopyWith<$Res> {
  factory _$FocusedCopyWith(_Focused value, $Res Function(_Focused) then) =
      __$FocusedCopyWithImpl<$Res>;
  $Res call({Duration duration, double percentage});
}

/// @nodoc
class __$FocusedCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$FocusedCopyWith<$Res> {
  __$FocusedCopyWithImpl(_Focused _value, $Res Function(_Focused) _then)
      : super(_value, (v) => _then(v as _Focused));

  @override
  _Focused get _value => super._value as _Focused;

  @override
  $Res call({
    Object duration = freezed,
    Object percentage = freezed,
  }) {
    return _then(_Focused(
      duration == freezed ? _value.duration : duration as Duration,
      percentage == freezed ? _value.percentage : percentage as double,
    ));
  }
}

/// @nodoc
class _$_Focused implements _Focused {
  const _$_Focused(this.duration, this.percentage)
      : assert(duration != null),
        assert(percentage != null);

  @override
  final Duration duration;
  @override
  final double percentage;

  @override
  String toString() {
    return 'PomodoroState.focused(duration: $duration, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Focused &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(percentage);

  @override
  _$FocusedCopyWith<_Focused> get copyWith =>
      __$FocusedCopyWithImpl<_Focused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return focused(duration, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focused != null) {
      return focused(duration, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return focused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focused != null) {
      return focused(this);
    }
    return orElse();
  }
}

abstract class _Focused implements PomodoroState {
  const factory _Focused(Duration duration, double percentage) = _$_Focused;

  Duration get duration;
  double get percentage;
  _$FocusedCopyWith<_Focused> get copyWith;
}

/// @nodoc
abstract class _$ShortBreakCopyWith<$Res> {
  factory _$ShortBreakCopyWith(
          _ShortBreak value, $Res Function(_ShortBreak) then) =
      __$ShortBreakCopyWithImpl<$Res>;
  $Res call({Duration duration, double percentage});
}

/// @nodoc
class __$ShortBreakCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$ShortBreakCopyWith<$Res> {
  __$ShortBreakCopyWithImpl(
      _ShortBreak _value, $Res Function(_ShortBreak) _then)
      : super(_value, (v) => _then(v as _ShortBreak));

  @override
  _ShortBreak get _value => super._value as _ShortBreak;

  @override
  $Res call({
    Object duration = freezed,
    Object percentage = freezed,
  }) {
    return _then(_ShortBreak(
      duration == freezed ? _value.duration : duration as Duration,
      percentage == freezed ? _value.percentage : percentage as double,
    ));
  }
}

/// @nodoc
class _$_ShortBreak implements _ShortBreak {
  const _$_ShortBreak(this.duration, this.percentage)
      : assert(duration != null),
        assert(percentage != null);

  @override
  final Duration duration;
  @override
  final double percentage;

  @override
  String toString() {
    return 'PomodoroState.shortBreak(duration: $duration, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortBreak &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(percentage);

  @override
  _$ShortBreakCopyWith<_ShortBreak> get copyWith =>
      __$ShortBreakCopyWithImpl<_ShortBreak>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return shortBreak(duration, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreak != null) {
      return shortBreak(duration, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return shortBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreak != null) {
      return shortBreak(this);
    }
    return orElse();
  }
}

abstract class _ShortBreak implements PomodoroState {
  const factory _ShortBreak(Duration duration, double percentage) =
      _$_ShortBreak;

  Duration get duration;
  double get percentage;
  _$ShortBreakCopyWith<_ShortBreak> get copyWith;
}

/// @nodoc
abstract class _$FocusPausedCopyWith<$Res> {
  factory _$FocusPausedCopyWith(
          _FocusPaused value, $Res Function(_FocusPaused) then) =
      __$FocusPausedCopyWithImpl<$Res>;
  $Res call({Duration duration, double percentage});
}

/// @nodoc
class __$FocusPausedCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$FocusPausedCopyWith<$Res> {
  __$FocusPausedCopyWithImpl(
      _FocusPaused _value, $Res Function(_FocusPaused) _then)
      : super(_value, (v) => _then(v as _FocusPaused));

  @override
  _FocusPaused get _value => super._value as _FocusPaused;

  @override
  $Res call({
    Object duration = freezed,
    Object percentage = freezed,
  }) {
    return _then(_FocusPaused(
      duration == freezed ? _value.duration : duration as Duration,
      percentage == freezed ? _value.percentage : percentage as double,
    ));
  }
}

/// @nodoc
class _$_FocusPaused implements _FocusPaused {
  const _$_FocusPaused(this.duration, this.percentage)
      : assert(duration != null),
        assert(percentage != null);

  @override
  final Duration duration;
  @override
  final double percentage;

  @override
  String toString() {
    return 'PomodoroState.focusPaused(duration: $duration, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FocusPaused &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(percentage);

  @override
  _$FocusPausedCopyWith<_FocusPaused> get copyWith =>
      __$FocusPausedCopyWithImpl<_FocusPaused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return focusPaused(duration, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusPaused != null) {
      return focusPaused(duration, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return focusPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusPaused != null) {
      return focusPaused(this);
    }
    return orElse();
  }
}

abstract class _FocusPaused implements PomodoroState {
  const factory _FocusPaused(Duration duration, double percentage) =
      _$_FocusPaused;

  Duration get duration;
  double get percentage;
  _$FocusPausedCopyWith<_FocusPaused> get copyWith;
}

/// @nodoc
abstract class _$BreakPausedCopyWith<$Res> {
  factory _$BreakPausedCopyWith(
          _BreakPaused value, $Res Function(_BreakPaused) then) =
      __$BreakPausedCopyWithImpl<$Res>;
  $Res call({Duration duration, double percentage});
}

/// @nodoc
class __$BreakPausedCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$BreakPausedCopyWith<$Res> {
  __$BreakPausedCopyWithImpl(
      _BreakPaused _value, $Res Function(_BreakPaused) _then)
      : super(_value, (v) => _then(v as _BreakPaused));

  @override
  _BreakPaused get _value => super._value as _BreakPaused;

  @override
  $Res call({
    Object duration = freezed,
    Object percentage = freezed,
  }) {
    return _then(_BreakPaused(
      duration == freezed ? _value.duration : duration as Duration,
      percentage == freezed ? _value.percentage : percentage as double,
    ));
  }
}

/// @nodoc
class _$_BreakPaused implements _BreakPaused {
  const _$_BreakPaused(this.duration, this.percentage)
      : assert(duration != null),
        assert(percentage != null);

  @override
  final Duration duration;
  @override
  final double percentage;

  @override
  String toString() {
    return 'PomodoroState.breakPaused(duration: $duration, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BreakPaused &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(percentage);

  @override
  _$BreakPausedCopyWith<_BreakPaused> get copyWith =>
      __$BreakPausedCopyWithImpl<_BreakPaused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult focused(Duration duration, double percentage),
    @required TResult shortBreak(Duration duration, double percentage),
    @required TResult focusPaused(Duration duration, double percentage),
    @required TResult breakPaused(Duration duration, double percentage),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return breakPaused(duration, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult focused(Duration duration, double percentage),
    TResult shortBreak(Duration duration, double percentage),
    TResult focusPaused(Duration duration, double percentage),
    TResult breakPaused(Duration duration, double percentage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (breakPaused != null) {
      return breakPaused(duration, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult focused(_Focused value),
    @required TResult shortBreak(_ShortBreak value),
    @required TResult focusPaused(_FocusPaused value),
    @required TResult breakPaused(_BreakPaused value),
  }) {
    assert(initial != null);
    assert(focused != null);
    assert(shortBreak != null);
    assert(focusPaused != null);
    assert(breakPaused != null);
    return breakPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult focused(_Focused value),
    TResult shortBreak(_ShortBreak value),
    TResult focusPaused(_FocusPaused value),
    TResult breakPaused(_BreakPaused value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (breakPaused != null) {
      return breakPaused(this);
    }
    return orElse();
  }
}

abstract class _BreakPaused implements PomodoroState {
  const factory _BreakPaused(Duration duration, double percentage) =
      _$_BreakPaused;

  Duration get duration;
  double get percentage;
  _$BreakPausedCopyWith<_BreakPaused> get copyWith;
}
