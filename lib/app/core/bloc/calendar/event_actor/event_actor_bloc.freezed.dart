// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'event_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EventActorEventTearOff {
  const _$EventActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(Event event) {
    return _Deleted(
      event,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventActorEvent = _$EventActorEventTearOff();

/// @nodoc
mixin _$EventActorEvent {
  Event get event;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Event event),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Event event),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });

  $EventActorEventCopyWith<EventActorEvent> get copyWith;
}

/// @nodoc
abstract class $EventActorEventCopyWith<$Res> {
  factory $EventActorEventCopyWith(
          EventActorEvent value, $Res Function(EventActorEvent) then) =
      _$EventActorEventCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventActorEventCopyWithImpl<$Res>
    implements $EventActorEventCopyWith<$Res> {
  _$EventActorEventCopyWithImpl(this._value, this._then);

  final EventActorEvent _value;
  // ignore: unused_field
  final $Res Function(EventActorEvent) _then;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed ? _value.event : event as Event,
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
abstract class _$DeletedCopyWith<$Res>
    implements $EventActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Event event});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$EventActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_Deleted(
      event == freezed ? _value.event : event as Event,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventActorEvent.deleted(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Event event),
  }) {
    assert(deleted != null);
    return deleted(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Event event),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements EventActorEvent {
  const factory _Deleted(Event event) = _$_Deleted;

  @override
  Event get event;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$EventActorStateTearOff {
  const _$EventActorStateTearOff();

// ignore: unused_element
  _EventActorState call(
      {@required
          Option<Either<CalendarFailure, Unit>> deleteFailureOrSuccessOption}) {
    return _EventActorState(
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventActorState = _$EventActorStateTearOff();

/// @nodoc
mixin _$EventActorState {
  Option<Either<CalendarFailure, Unit>> get deleteFailureOrSuccessOption;

  $EventActorStateCopyWith<EventActorState> get copyWith;
}

/// @nodoc
abstract class $EventActorStateCopyWith<$Res> {
  factory $EventActorStateCopyWith(
          EventActorState value, $Res Function(EventActorState) then) =
      _$EventActorStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<CalendarFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class _$EventActorStateCopyWithImpl<$Res>
    implements $EventActorStateCopyWith<$Res> {
  _$EventActorStateCopyWithImpl(this._value, this._then);

  final EventActorState _value;
  // ignore: unused_field
  final $Res Function(EventActorState) _then;

  @override
  $Res call({
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EventActorStateCopyWith<$Res>
    implements $EventActorStateCopyWith<$Res> {
  factory _$EventActorStateCopyWith(
          _EventActorState value, $Res Function(_EventActorState) then) =
      __$EventActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<CalendarFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class __$EventActorStateCopyWithImpl<$Res>
    extends _$EventActorStateCopyWithImpl<$Res>
    implements _$EventActorStateCopyWith<$Res> {
  __$EventActorStateCopyWithImpl(
      _EventActorState _value, $Res Function(_EventActorState) _then)
      : super(_value, (v) => _then(v as _EventActorState));

  @override
  _EventActorState get _value => super._value as _EventActorState;

  @override
  $Res call({
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_EventActorState(
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EventActorState implements _EventActorState {
  _$_EventActorState({@required this.deleteFailureOrSuccessOption})
      : assert(deleteFailureOrSuccessOption != null);

  @override
  final Option<Either<CalendarFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'EventActorState(deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventActorState &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption);

  @override
  _$EventActorStateCopyWith<_EventActorState> get copyWith =>
      __$EventActorStateCopyWithImpl<_EventActorState>(this, _$identity);
}

abstract class _EventActorState implements EventActorState {
  factory _EventActorState(
      {@required
          Option<Either<CalendarFailure, Unit>>
              deleteFailureOrSuccessOption}) = _$_EventActorState;

  @override
  Option<Either<CalendarFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  _$EventActorStateCopyWith<_EventActorState> get copyWith;
}
