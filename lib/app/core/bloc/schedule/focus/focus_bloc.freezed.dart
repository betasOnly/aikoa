// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'focus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FocusEventTearOff {
  const _$FocusEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _FocusedOn focusedOn(TimeBox timebox) {
    return _FocusedOn(
      timebox,
    );
  }

// ignore: unused_element
  _EventStarted eventStarted(Event event) {
    return _EventStarted(
      event,
    );
  }

// ignore: unused_element
  _Unfocus unfocus() {
    return const _Unfocus();
  }

// ignore: unused_element
  _Done done() {
    return const _Done();
  }
}

/// @nodoc
// ignore: unused_element
const $FocusEvent = _$FocusEventTearOff();

/// @nodoc
mixin _$FocusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FocusEventCopyWith<$Res> {
  factory $FocusEventCopyWith(
          FocusEvent value, $Res Function(FocusEvent) then) =
      _$FocusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FocusEventCopyWithImpl<$Res> implements $FocusEventCopyWith<$Res> {
  _$FocusEventCopyWithImpl(this._value, this._then);

  final FocusEvent _value;
  // ignore: unused_field
  final $Res Function(FocusEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$FocusEventCopyWithImpl<$Res>
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
    return 'FocusEvent.initialized()';
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
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
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
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FocusEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$FocusedOnCopyWith<$Res> {
  factory _$FocusedOnCopyWith(
          _FocusedOn value, $Res Function(_FocusedOn) then) =
      __$FocusedOnCopyWithImpl<$Res>;
  $Res call({TimeBox timebox});

  $TimeBoxCopyWith<$Res> get timebox;
}

/// @nodoc
class __$FocusedOnCopyWithImpl<$Res> extends _$FocusEventCopyWithImpl<$Res>
    implements _$FocusedOnCopyWith<$Res> {
  __$FocusedOnCopyWithImpl(_FocusedOn _value, $Res Function(_FocusedOn) _then)
      : super(_value, (v) => _then(v as _FocusedOn));

  @override
  _FocusedOn get _value => super._value as _FocusedOn;

  @override
  $Res call({
    Object timebox = freezed,
  }) {
    return _then(_FocusedOn(
      timebox == freezed ? _value.timebox : timebox as TimeBox,
    ));
  }

  @override
  $TimeBoxCopyWith<$Res> get timebox {
    if (_value.timebox == null) {
      return null;
    }
    return $TimeBoxCopyWith<$Res>(_value.timebox, (value) {
      return _then(_value.copyWith(timebox: value));
    });
  }
}

/// @nodoc
class _$_FocusedOn implements _FocusedOn {
  const _$_FocusedOn(this.timebox) : assert(timebox != null);

  @override
  final TimeBox timebox;

  @override
  String toString() {
    return 'FocusEvent.focusedOn(timebox: $timebox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FocusedOn &&
            (identical(other.timebox, timebox) ||
                const DeepCollectionEquality().equals(other.timebox, timebox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timebox);

  @override
  _$FocusedOnCopyWith<_FocusedOn> get copyWith =>
      __$FocusedOnCopyWithImpl<_FocusedOn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return focusedOn(timebox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusedOn != null) {
      return focusedOn(timebox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return focusedOn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focusedOn != null) {
      return focusedOn(this);
    }
    return orElse();
  }
}

abstract class _FocusedOn implements FocusEvent {
  const factory _FocusedOn(TimeBox timebox) = _$_FocusedOn;

  TimeBox get timebox;
  _$FocusedOnCopyWith<_FocusedOn> get copyWith;
}

/// @nodoc
abstract class _$EventStartedCopyWith<$Res> {
  factory _$EventStartedCopyWith(
          _EventStarted value, $Res Function(_EventStarted) then) =
      __$EventStartedCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$EventStartedCopyWithImpl<$Res> extends _$FocusEventCopyWithImpl<$Res>
    implements _$EventStartedCopyWith<$Res> {
  __$EventStartedCopyWithImpl(
      _EventStarted _value, $Res Function(_EventStarted) _then)
      : super(_value, (v) => _then(v as _EventStarted));

  @override
  _EventStarted get _value => super._value as _EventStarted;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_EventStarted(
      event == freezed ? _value.event : event as Event,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
class _$_EventStarted implements _EventStarted {
  const _$_EventStarted(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'FocusEvent.eventStarted(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventStarted &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  _$EventStartedCopyWith<_EventStarted> get copyWith =>
      __$EventStartedCopyWithImpl<_EventStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return eventStarted(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventStarted != null) {
      return eventStarted(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return eventStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventStarted != null) {
      return eventStarted(this);
    }
    return orElse();
  }
}

abstract class _EventStarted implements FocusEvent {
  const factory _EventStarted(Event event) = _$_EventStarted;

  Event get event;
  _$EventStartedCopyWith<_EventStarted> get copyWith;
}

/// @nodoc
abstract class _$UnfocusCopyWith<$Res> {
  factory _$UnfocusCopyWith(_Unfocus value, $Res Function(_Unfocus) then) =
      __$UnfocusCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnfocusCopyWithImpl<$Res> extends _$FocusEventCopyWithImpl<$Res>
    implements _$UnfocusCopyWith<$Res> {
  __$UnfocusCopyWithImpl(_Unfocus _value, $Res Function(_Unfocus) _then)
      : super(_value, (v) => _then(v as _Unfocus));

  @override
  _Unfocus get _value => super._value as _Unfocus;
}

/// @nodoc
class _$_Unfocus implements _Unfocus {
  const _$_Unfocus();

  @override
  String toString() {
    return 'FocusEvent.unfocus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unfocus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return unfocus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unfocus != null) {
      return unfocus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return unfocus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unfocus != null) {
      return unfocus(this);
    }
    return orElse();
  }
}

abstract class _Unfocus implements FocusEvent {
  const factory _Unfocus() = _$_Unfocus;
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$FocusEventCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;
}

/// @nodoc
class _$_Done implements _Done {
  const _$_Done();

  @override
  String toString() {
    return 'FocusEvent.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult focusedOn(TimeBox timebox),
    @required TResult eventStarted(Event event),
    @required TResult unfocus(),
    @required TResult done(),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult focusedOn(TimeBox timebox),
    TResult eventStarted(Event event),
    TResult unfocus(),
    TResult done(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult focusedOn(_FocusedOn value),
    @required TResult eventStarted(_EventStarted value),
    @required TResult unfocus(_Unfocus value),
    @required TResult done(_Done value),
  }) {
    assert(initialized != null);
    assert(focusedOn != null);
    assert(eventStarted != null);
    assert(unfocus != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult focusedOn(_FocusedOn value),
    TResult eventStarted(_EventStarted value),
    TResult unfocus(_Unfocus value),
    TResult done(_Done value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements FocusEvent {
  const factory _Done() = _$_Done;
}

/// @nodoc
class _$FocusStateTearOff {
  const _$FocusStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsTimeBox isTimeBox(TimeBox timebox) {
    return _IsTimeBox(
      timebox,
    );
  }

// ignore: unused_element
  _IsEvent isEvent(Event event) {
    return _IsEvent(
      event,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FocusState = _$FocusStateTearOff();

/// @nodoc
mixin _$FocusState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isTimeBox(TimeBox timebox),
    @required TResult isEvent(Event event),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isTimeBox(TimeBox timebox),
    TResult isEvent(Event event),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isTimeBox(_IsTimeBox value),
    @required TResult isEvent(_IsEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isTimeBox(_IsTimeBox value),
    TResult isEvent(_IsEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FocusStateCopyWith<$Res> {
  factory $FocusStateCopyWith(
          FocusState value, $Res Function(FocusState) then) =
      _$FocusStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FocusStateCopyWithImpl<$Res> implements $FocusStateCopyWith<$Res> {
  _$FocusStateCopyWithImpl(this._value, this._then);

  final FocusState _value;
  // ignore: unused_field
  final $Res Function(FocusState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
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
    return 'FocusState.initial()';
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
    @required TResult isTimeBox(TimeBox timebox),
    @required TResult isEvent(Event event),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isTimeBox(TimeBox timebox),
    TResult isEvent(Event event),
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
    @required TResult isTimeBox(_IsTimeBox value),
    @required TResult isEvent(_IsEvent value),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isTimeBox(_IsTimeBox value),
    TResult isEvent(_IsEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FocusState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsTimeBoxCopyWith<$Res> {
  factory _$IsTimeBoxCopyWith(
          _IsTimeBox value, $Res Function(_IsTimeBox) then) =
      __$IsTimeBoxCopyWithImpl<$Res>;
  $Res call({TimeBox timebox});

  $TimeBoxCopyWith<$Res> get timebox;
}

/// @nodoc
class __$IsTimeBoxCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$IsTimeBoxCopyWith<$Res> {
  __$IsTimeBoxCopyWithImpl(_IsTimeBox _value, $Res Function(_IsTimeBox) _then)
      : super(_value, (v) => _then(v as _IsTimeBox));

  @override
  _IsTimeBox get _value => super._value as _IsTimeBox;

  @override
  $Res call({
    Object timebox = freezed,
  }) {
    return _then(_IsTimeBox(
      timebox == freezed ? _value.timebox : timebox as TimeBox,
    ));
  }

  @override
  $TimeBoxCopyWith<$Res> get timebox {
    if (_value.timebox == null) {
      return null;
    }
    return $TimeBoxCopyWith<$Res>(_value.timebox, (value) {
      return _then(_value.copyWith(timebox: value));
    });
  }
}

/// @nodoc
class _$_IsTimeBox implements _IsTimeBox {
  const _$_IsTimeBox(this.timebox) : assert(timebox != null);

  @override
  final TimeBox timebox;

  @override
  String toString() {
    return 'FocusState.isTimeBox(timebox: $timebox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsTimeBox &&
            (identical(other.timebox, timebox) ||
                const DeepCollectionEquality().equals(other.timebox, timebox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timebox);

  @override
  _$IsTimeBoxCopyWith<_IsTimeBox> get copyWith =>
      __$IsTimeBoxCopyWithImpl<_IsTimeBox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isTimeBox(TimeBox timebox),
    @required TResult isEvent(Event event),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return isTimeBox(timebox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isTimeBox(TimeBox timebox),
    TResult isEvent(Event event),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isTimeBox != null) {
      return isTimeBox(timebox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isTimeBox(_IsTimeBox value),
    @required TResult isEvent(_IsEvent value),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return isTimeBox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isTimeBox(_IsTimeBox value),
    TResult isEvent(_IsEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isTimeBox != null) {
      return isTimeBox(this);
    }
    return orElse();
  }
}

abstract class _IsTimeBox implements FocusState {
  const factory _IsTimeBox(TimeBox timebox) = _$_IsTimeBox;

  TimeBox get timebox;
  _$IsTimeBoxCopyWith<_IsTimeBox> get copyWith;
}

/// @nodoc
abstract class _$IsEventCopyWith<$Res> {
  factory _$IsEventCopyWith(_IsEvent value, $Res Function(_IsEvent) then) =
      __$IsEventCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$IsEventCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$IsEventCopyWith<$Res> {
  __$IsEventCopyWithImpl(_IsEvent _value, $Res Function(_IsEvent) _then)
      : super(_value, (v) => _then(v as _IsEvent));

  @override
  _IsEvent get _value => super._value as _IsEvent;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_IsEvent(
      event == freezed ? _value.event : event as Event,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
class _$_IsEvent implements _IsEvent {
  const _$_IsEvent(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'FocusState.isEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  _$IsEventCopyWith<_IsEvent> get copyWith =>
      __$IsEventCopyWithImpl<_IsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isTimeBox(TimeBox timebox),
    @required TResult isEvent(Event event),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return isEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isTimeBox(TimeBox timebox),
    TResult isEvent(Event event),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isEvent != null) {
      return isEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isTimeBox(_IsTimeBox value),
    @required TResult isEvent(_IsEvent value),
  }) {
    assert(initial != null);
    assert(isTimeBox != null);
    assert(isEvent != null);
    return isEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isTimeBox(_IsTimeBox value),
    TResult isEvent(_IsEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isEvent != null) {
      return isEvent(this);
    }
    return orElse();
  }
}

abstract class _IsEvent implements FocusState {
  const factory _IsEvent(Event event) = _$_IsEvent;

  Event get event;
  _$IsEventCopyWith<_IsEvent> get copyWith;
}
