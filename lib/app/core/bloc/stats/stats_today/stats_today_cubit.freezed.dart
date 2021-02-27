// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stats_today_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatsTodayStateTearOff {
  const _$StatsTodayStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(DaylyStats stats) {
    return _LoadSuccess(
      stats,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(StatsFailure statsFailure) {
    return _LoadFailure(
      statsFailure,
    );
  }

// ignore: unused_element
  _ShutdownCompleted shutdownCompleted(DaylyStats stats) {
    return _ShutdownCompleted(
      stats,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StatsTodayState = _$StatsTodayStateTearOff();

/// @nodoc
mixin _$StatsTodayState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(DaylyStats stats),
    @required TResult loadFailure(StatsFailure statsFailure),
    @required TResult shutdownCompleted(DaylyStats stats),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(DaylyStats stats),
    TResult loadFailure(StatsFailure statsFailure),
    TResult shutdownCompleted(DaylyStats stats),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult shutdownCompleted(_ShutdownCompleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult shutdownCompleted(_ShutdownCompleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StatsTodayStateCopyWith<$Res> {
  factory $StatsTodayStateCopyWith(
          StatsTodayState value, $Res Function(StatsTodayState) then) =
      _$StatsTodayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsTodayStateCopyWithImpl<$Res>
    implements $StatsTodayStateCopyWith<$Res> {
  _$StatsTodayStateCopyWithImpl(this._value, this._then);

  final StatsTodayState _value;
  // ignore: unused_field
  final $Res Function(StatsTodayState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StatsTodayStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  _$_Initial();

  bool _didshutdown = false;
  Option<DateTime> _shutdown;

  @override
  Option<DateTime> get shutdown {
    if (_didshutdown == false) {
      _didshutdown = true;
      _shutdown = this.maybeMap(
          loadSuccess: (state) => state.stats.shutdownAt,
          shutdownCompleted: (state) => state.stats.shutdownAt,
          orElse: () => none());
    }
    return _shutdown;
  }

  @override
  String toString() {
    return 'StatsTodayState.initial(shutdown: $shutdown)';
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
    @required TResult loadSuccess(DaylyStats stats),
    @required TResult loadFailure(StatsFailure statsFailure),
    @required TResult shutdownCompleted(DaylyStats stats),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(DaylyStats stats),
    TResult loadFailure(StatsFailure statsFailure),
    TResult shutdownCompleted(DaylyStats stats),
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
    @required TResult shutdownCompleted(_ShutdownCompleted value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult shutdownCompleted(_ShutdownCompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatsTodayState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({DaylyStats stats});

  $DaylyStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$StatsTodayStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object stats = freezed,
  }) {
    return _then(_LoadSuccess(
      stats == freezed ? _value.stats : stats as DaylyStats,
    ));
  }

  @override
  $DaylyStatsCopyWith<$Res> get stats {
    if (_value.stats == null) {
      return null;
    }
    return $DaylyStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  _$_LoadSuccess(this.stats) : assert(stats != null);

  @override
  final DaylyStats stats;

  bool _didshutdown = false;
  Option<DateTime> _shutdown;

  @override
  Option<DateTime> get shutdown {
    if (_didshutdown == false) {
      _didshutdown = true;
      _shutdown = this.maybeMap(
          loadSuccess: (state) => state.stats.shutdownAt,
          shutdownCompleted: (state) => state.stats.shutdownAt,
          orElse: () => none());
    }
    return _shutdown;
  }

  @override
  String toString() {
    return 'StatsTodayState.loadSuccess(stats: $stats, shutdown: $shutdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stats);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(DaylyStats stats),
    @required TResult loadFailure(StatsFailure statsFailure),
    @required TResult shutdownCompleted(DaylyStats stats),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return loadSuccess(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(DaylyStats stats),
    TResult loadFailure(StatsFailure statsFailure),
    TResult shutdownCompleted(DaylyStats stats),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult shutdownCompleted(_ShutdownCompleted value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult shutdownCompleted(_ShutdownCompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements StatsTodayState {
  factory _LoadSuccess(DaylyStats stats) = _$_LoadSuccess;

  DaylyStats get stats;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({StatsFailure statsFailure});

  $StatsFailureCopyWith<$Res> get statsFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$StatsTodayStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object statsFailure = freezed,
  }) {
    return _then(_LoadFailure(
      statsFailure == freezed
          ? _value.statsFailure
          : statsFailure as StatsFailure,
    ));
  }

  @override
  $StatsFailureCopyWith<$Res> get statsFailure {
    if (_value.statsFailure == null) {
      return null;
    }
    return $StatsFailureCopyWith<$Res>(_value.statsFailure, (value) {
      return _then(_value.copyWith(statsFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  _$_LoadFailure(this.statsFailure) : assert(statsFailure != null);

  @override
  final StatsFailure statsFailure;

  bool _didshutdown = false;
  Option<DateTime> _shutdown;

  @override
  Option<DateTime> get shutdown {
    if (_didshutdown == false) {
      _didshutdown = true;
      _shutdown = this.maybeMap(
          loadSuccess: (state) => state.stats.shutdownAt,
          shutdownCompleted: (state) => state.stats.shutdownAt,
          orElse: () => none());
    }
    return _shutdown;
  }

  @override
  String toString() {
    return 'StatsTodayState.loadFailure(statsFailure: $statsFailure, shutdown: $shutdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.statsFailure, statsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.statsFailure, statsFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(statsFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(DaylyStats stats),
    @required TResult loadFailure(StatsFailure statsFailure),
    @required TResult shutdownCompleted(DaylyStats stats),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return loadFailure(statsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(DaylyStats stats),
    TResult loadFailure(StatsFailure statsFailure),
    TResult shutdownCompleted(DaylyStats stats),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(statsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult shutdownCompleted(_ShutdownCompleted value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult shutdownCompleted(_ShutdownCompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements StatsTodayState {
  factory _LoadFailure(StatsFailure statsFailure) = _$_LoadFailure;

  StatsFailure get statsFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$ShutdownCompletedCopyWith<$Res> {
  factory _$ShutdownCompletedCopyWith(
          _ShutdownCompleted value, $Res Function(_ShutdownCompleted) then) =
      __$ShutdownCompletedCopyWithImpl<$Res>;
  $Res call({DaylyStats stats});

  $DaylyStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$ShutdownCompletedCopyWithImpl<$Res>
    extends _$StatsTodayStateCopyWithImpl<$Res>
    implements _$ShutdownCompletedCopyWith<$Res> {
  __$ShutdownCompletedCopyWithImpl(
      _ShutdownCompleted _value, $Res Function(_ShutdownCompleted) _then)
      : super(_value, (v) => _then(v as _ShutdownCompleted));

  @override
  _ShutdownCompleted get _value => super._value as _ShutdownCompleted;

  @override
  $Res call({
    Object stats = freezed,
  }) {
    return _then(_ShutdownCompleted(
      stats == freezed ? _value.stats : stats as DaylyStats,
    ));
  }

  @override
  $DaylyStatsCopyWith<$Res> get stats {
    if (_value.stats == null) {
      return null;
    }
    return $DaylyStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
class _$_ShutdownCompleted implements _ShutdownCompleted {
  _$_ShutdownCompleted(this.stats) : assert(stats != null);

  @override
  final DaylyStats stats;

  bool _didshutdown = false;
  Option<DateTime> _shutdown;

  @override
  Option<DateTime> get shutdown {
    if (_didshutdown == false) {
      _didshutdown = true;
      _shutdown = this.maybeMap(
          loadSuccess: (state) => state.stats.shutdownAt,
          shutdownCompleted: (state) => state.stats.shutdownAt,
          orElse: () => none());
    }
    return _shutdown;
  }

  @override
  String toString() {
    return 'StatsTodayState.shutdownCompleted(stats: $stats, shutdown: $shutdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShutdownCompleted &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stats);

  @override
  _$ShutdownCompletedCopyWith<_ShutdownCompleted> get copyWith =>
      __$ShutdownCompletedCopyWithImpl<_ShutdownCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(DaylyStats stats),
    @required TResult loadFailure(StatsFailure statsFailure),
    @required TResult shutdownCompleted(DaylyStats stats),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return shutdownCompleted(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(DaylyStats stats),
    TResult loadFailure(StatsFailure statsFailure),
    TResult shutdownCompleted(DaylyStats stats),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shutdownCompleted != null) {
      return shutdownCompleted(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult shutdownCompleted(_ShutdownCompleted value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(shutdownCompleted != null);
    return shutdownCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult shutdownCompleted(_ShutdownCompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shutdownCompleted != null) {
      return shutdownCompleted(this);
    }
    return orElse();
  }
}

abstract class _ShutdownCompleted implements StatsTodayState {
  factory _ShutdownCompleted(DaylyStats stats) = _$_ShutdownCompleted;

  DaylyStats get stats;
  _$ShutdownCompletedCopyWith<_ShutdownCompleted> get copyWith;
}
