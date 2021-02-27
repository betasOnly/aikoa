// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dayly_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DaylyStatsTearOff {
  const _$DaylyStatsTearOff();

// ignore: unused_element
  _DaylyStats call(
      {@required DateTime date,
      @required Option<DateTime> shutdownAt,
      @required int tasksDone,
      @required int tasksTotal,
      @required Duration timeScheduled,
      @required Duration timeFocused}) {
    return _DaylyStats(
      date: date,
      shutdownAt: shutdownAt,
      tasksDone: tasksDone,
      tasksTotal: tasksTotal,
      timeScheduled: timeScheduled,
      timeFocused: timeFocused,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DaylyStats = _$DaylyStatsTearOff();

/// @nodoc
mixin _$DaylyStats {
  DateTime get date;
  Option<DateTime> get shutdownAt;
  int get tasksDone;
  int get tasksTotal;
  Duration get timeScheduled;
  Duration get timeFocused;

  $DaylyStatsCopyWith<DaylyStats> get copyWith;
}

/// @nodoc
abstract class $DaylyStatsCopyWith<$Res> {
  factory $DaylyStatsCopyWith(
          DaylyStats value, $Res Function(DaylyStats) then) =
      _$DaylyStatsCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Option<DateTime> shutdownAt,
      int tasksDone,
      int tasksTotal,
      Duration timeScheduled,
      Duration timeFocused});
}

/// @nodoc
class _$DaylyStatsCopyWithImpl<$Res> implements $DaylyStatsCopyWith<$Res> {
  _$DaylyStatsCopyWithImpl(this._value, this._then);

  final DaylyStats _value;
  // ignore: unused_field
  final $Res Function(DaylyStats) _then;

  @override
  $Res call({
    Object date = freezed,
    Object shutdownAt = freezed,
    Object tasksDone = freezed,
    Object tasksTotal = freezed,
    Object timeScheduled = freezed,
    Object timeFocused = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      shutdownAt: shutdownAt == freezed
          ? _value.shutdownAt
          : shutdownAt as Option<DateTime>,
      tasksDone: tasksDone == freezed ? _value.tasksDone : tasksDone as int,
      tasksTotal: tasksTotal == freezed ? _value.tasksTotal : tasksTotal as int,
      timeScheduled: timeScheduled == freezed
          ? _value.timeScheduled
          : timeScheduled as Duration,
      timeFocused:
          timeFocused == freezed ? _value.timeFocused : timeFocused as Duration,
    ));
  }
}

/// @nodoc
abstract class _$DaylyStatsCopyWith<$Res> implements $DaylyStatsCopyWith<$Res> {
  factory _$DaylyStatsCopyWith(
          _DaylyStats value, $Res Function(_DaylyStats) then) =
      __$DaylyStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      Option<DateTime> shutdownAt,
      int tasksDone,
      int tasksTotal,
      Duration timeScheduled,
      Duration timeFocused});
}

/// @nodoc
class __$DaylyStatsCopyWithImpl<$Res> extends _$DaylyStatsCopyWithImpl<$Res>
    implements _$DaylyStatsCopyWith<$Res> {
  __$DaylyStatsCopyWithImpl(
      _DaylyStats _value, $Res Function(_DaylyStats) _then)
      : super(_value, (v) => _then(v as _DaylyStats));

  @override
  _DaylyStats get _value => super._value as _DaylyStats;

  @override
  $Res call({
    Object date = freezed,
    Object shutdownAt = freezed,
    Object tasksDone = freezed,
    Object tasksTotal = freezed,
    Object timeScheduled = freezed,
    Object timeFocused = freezed,
  }) {
    return _then(_DaylyStats(
      date: date == freezed ? _value.date : date as DateTime,
      shutdownAt: shutdownAt == freezed
          ? _value.shutdownAt
          : shutdownAt as Option<DateTime>,
      tasksDone: tasksDone == freezed ? _value.tasksDone : tasksDone as int,
      tasksTotal: tasksTotal == freezed ? _value.tasksTotal : tasksTotal as int,
      timeScheduled: timeScheduled == freezed
          ? _value.timeScheduled
          : timeScheduled as Duration,
      timeFocused:
          timeFocused == freezed ? _value.timeFocused : timeFocused as Duration,
    ));
  }
}

/// @nodoc
class _$_DaylyStats with DiagnosticableTreeMixin implements _DaylyStats {
  const _$_DaylyStats(
      {@required this.date,
      @required this.shutdownAt,
      @required this.tasksDone,
      @required this.tasksTotal,
      @required this.timeScheduled,
      @required this.timeFocused})
      : assert(date != null),
        assert(shutdownAt != null),
        assert(tasksDone != null),
        assert(tasksTotal != null),
        assert(timeScheduled != null),
        assert(timeFocused != null);

  @override
  final DateTime date;
  @override
  final Option<DateTime> shutdownAt;
  @override
  final int tasksDone;
  @override
  final int tasksTotal;
  @override
  final Duration timeScheduled;
  @override
  final Duration timeFocused;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DaylyStats(date: $date, shutdownAt: $shutdownAt, tasksDone: $tasksDone, tasksTotal: $tasksTotal, timeScheduled: $timeScheduled, timeFocused: $timeFocused)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DaylyStats'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('shutdownAt', shutdownAt))
      ..add(DiagnosticsProperty('tasksDone', tasksDone))
      ..add(DiagnosticsProperty('tasksTotal', tasksTotal))
      ..add(DiagnosticsProperty('timeScheduled', timeScheduled))
      ..add(DiagnosticsProperty('timeFocused', timeFocused));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DaylyStats &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.shutdownAt, shutdownAt) ||
                const DeepCollectionEquality()
                    .equals(other.shutdownAt, shutdownAt)) &&
            (identical(other.tasksDone, tasksDone) ||
                const DeepCollectionEquality()
                    .equals(other.tasksDone, tasksDone)) &&
            (identical(other.tasksTotal, tasksTotal) ||
                const DeepCollectionEquality()
                    .equals(other.tasksTotal, tasksTotal)) &&
            (identical(other.timeScheduled, timeScheduled) ||
                const DeepCollectionEquality()
                    .equals(other.timeScheduled, timeScheduled)) &&
            (identical(other.timeFocused, timeFocused) ||
                const DeepCollectionEquality()
                    .equals(other.timeFocused, timeFocused)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(shutdownAt) ^
      const DeepCollectionEquality().hash(tasksDone) ^
      const DeepCollectionEquality().hash(tasksTotal) ^
      const DeepCollectionEquality().hash(timeScheduled) ^
      const DeepCollectionEquality().hash(timeFocused);

  @override
  _$DaylyStatsCopyWith<_DaylyStats> get copyWith =>
      __$DaylyStatsCopyWithImpl<_DaylyStats>(this, _$identity);
}

abstract class _DaylyStats implements DaylyStats {
  const factory _DaylyStats(
      {@required DateTime date,
      @required Option<DateTime> shutdownAt,
      @required int tasksDone,
      @required int tasksTotal,
      @required Duration timeScheduled,
      @required Duration timeFocused}) = _$_DaylyStats;

  @override
  DateTime get date;
  @override
  Option<DateTime> get shutdownAt;
  @override
  int get tasksDone;
  @override
  int get tasksTotal;
  @override
  Duration get timeScheduled;
  @override
  Duration get timeFocused;
  @override
  _$DaylyStatsCopyWith<_DaylyStats> get copyWith;
}
