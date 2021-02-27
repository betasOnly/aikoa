// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'schedule_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ScheduleWatcherStateTearOff {
  const _$ScheduleWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(
      UnmodifiableListView<Either<Event, TimeBox>> schedule) {
    return _LoadSuccess(
      schedule,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ScheduleFailure scheduleFailure) {
    return _LoadFailure(
      scheduleFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ScheduleWatcherState = _$ScheduleWatcherStateTearOff();

/// @nodoc
mixin _$ScheduleWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult loadSuccess(
            UnmodifiableListView<Either<Event, TimeBox>> schedule),
    @required TResult loadFailure(ScheduleFailure scheduleFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(UnmodifiableListView<Either<Event, TimeBox>> schedule),
    TResult loadFailure(ScheduleFailure scheduleFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ScheduleWatcherStateCopyWith<$Res> {
  factory $ScheduleWatcherStateCopyWith(ScheduleWatcherState value,
          $Res Function(ScheduleWatcherState) then) =
      _$ScheduleWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleWatcherStateCopyWithImpl<$Res>
    implements $ScheduleWatcherStateCopyWith<$Res> {
  _$ScheduleWatcherStateCopyWithImpl(this._value, this._then);

  final ScheduleWatcherState _value;
  // ignore: unused_field
  final $Res Function(ScheduleWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ScheduleWatcherStateCopyWithImpl<$Res>
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
    return 'ScheduleWatcherState.initial()';
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
    @required
        TResult loadSuccess(
            UnmodifiableListView<Either<Event, TimeBox>> schedule),
    @required TResult loadFailure(ScheduleFailure scheduleFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(UnmodifiableListView<Either<Event, TimeBox>> schedule),
    TResult loadFailure(ScheduleFailure scheduleFailure),
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
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<Either<Event, TimeBox>> schedule});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ScheduleWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object schedule = freezed,
  }) {
    return _then(_LoadSuccess(
      schedule == freezed
          ? _value.schedule
          : schedule as UnmodifiableListView<Either<Event, TimeBox>>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.schedule) : assert(schedule != null);

  @override
  final UnmodifiableListView<Either<Event, TimeBox>> schedule;

  @override
  String toString() {
    return 'ScheduleWatcherState.loadSuccess(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedule);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult loadSuccess(
            UnmodifiableListView<Either<Event, TimeBox>> schedule),
    @required TResult loadFailure(ScheduleFailure scheduleFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(UnmodifiableListView<Either<Event, TimeBox>> schedule),
    TResult loadFailure(ScheduleFailure scheduleFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ScheduleWatcherState {
  const factory _LoadSuccess(
      UnmodifiableListView<Either<Event, TimeBox>> schedule) = _$_LoadSuccess;

  UnmodifiableListView<Either<Event, TimeBox>> get schedule;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ScheduleFailure scheduleFailure});

  $ScheduleFailureCopyWith<$Res> get scheduleFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ScheduleWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object scheduleFailure = freezed,
  }) {
    return _then(_LoadFailure(
      scheduleFailure == freezed
          ? _value.scheduleFailure
          : scheduleFailure as ScheduleFailure,
    ));
  }

  @override
  $ScheduleFailureCopyWith<$Res> get scheduleFailure {
    if (_value.scheduleFailure == null) {
      return null;
    }
    return $ScheduleFailureCopyWith<$Res>(_value.scheduleFailure, (value) {
      return _then(_value.copyWith(scheduleFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.scheduleFailure) : assert(scheduleFailure != null);

  @override
  final ScheduleFailure scheduleFailure;

  @override
  String toString() {
    return 'ScheduleWatcherState.loadFailure(scheduleFailure: $scheduleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.scheduleFailure, scheduleFailure) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleFailure, scheduleFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scheduleFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult loadSuccess(
            UnmodifiableListView<Either<Event, TimeBox>> schedule),
    @required TResult loadFailure(ScheduleFailure scheduleFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(scheduleFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(UnmodifiableListView<Either<Event, TimeBox>> schedule),
    TResult loadFailure(ScheduleFailure scheduleFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(scheduleFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ScheduleWatcherState {
  const factory _LoadFailure(ScheduleFailure scheduleFailure) = _$_LoadFailure;

  ScheduleFailure get scheduleFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
