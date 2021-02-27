// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskWatcherStateTearOff {
  const _$TaskWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _DataTransferInProgress loadInProgress() {
    return const _DataTransferInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(UnmodifiableListView<Task> tasks) {
    return _LoadSuccess(
      tasks,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(TaskFailure taskFailure) {
    return _LoadFailure(
      taskFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskWatcherState = _$TaskWatcherStateTearOff();

/// @nodoc
mixin _$TaskWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UnmodifiableListView<Task> tasks),
    @required TResult loadFailure(TaskFailure taskFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UnmodifiableListView<Task> tasks),
    TResult loadFailure(TaskFailure taskFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_DataTransferInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_DataTransferInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TaskWatcherStateCopyWith<$Res> {
  factory $TaskWatcherStateCopyWith(
          TaskWatcherState value, $Res Function(TaskWatcherState) then) =
      _$TaskWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskWatcherStateCopyWithImpl<$Res>
    implements $TaskWatcherStateCopyWith<$Res> {
  _$TaskWatcherStateCopyWithImpl(this._value, this._then);

  final TaskWatcherState _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TaskWatcherStateCopyWithImpl<$Res>
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
    return 'TaskWatcherState.initial()';
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
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UnmodifiableListView<Task> tasks),
    @required TResult loadFailure(TaskFailure taskFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UnmodifiableListView<Task> tasks),
    TResult loadFailure(TaskFailure taskFailure),
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
    @required TResult loadInProgress(_DataTransferInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_DataTransferInProgress value),
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

abstract class _Initial implements TaskWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DataTransferInProgressCopyWith<$Res> {
  factory _$DataTransferInProgressCopyWith(_DataTransferInProgress value,
          $Res Function(_DataTransferInProgress) then) =
      __$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataTransferInProgressCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$DataTransferInProgressCopyWith<$Res> {
  __$DataTransferInProgressCopyWithImpl(_DataTransferInProgress _value,
      $Res Function(_DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as _DataTransferInProgress));

  @override
  _DataTransferInProgress get _value => super._value as _DataTransferInProgress;
}

/// @nodoc
class _$_DataTransferInProgress implements _DataTransferInProgress {
  const _$_DataTransferInProgress();

  @override
  String toString() {
    return 'TaskWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UnmodifiableListView<Task> tasks),
    @required TResult loadFailure(TaskFailure taskFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UnmodifiableListView<Task> tasks),
    TResult loadFailure(TaskFailure taskFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_DataTransferInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_DataTransferInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _DataTransferInProgress implements TaskWatcherState {
  const factory _DataTransferInProgress() = _$_DataTransferInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<Task> tasks});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object tasks = freezed,
  }) {
    return _then(_LoadSuccess(
      tasks == freezed ? _value.tasks : tasks as UnmodifiableListView<Task>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.tasks) : assert(tasks != null);

  @override
  final UnmodifiableListView<Task> tasks;

  @override
  String toString() {
    return 'TaskWatcherState.loadSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UnmodifiableListView<Task> tasks),
    @required TResult loadFailure(TaskFailure taskFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UnmodifiableListView<Task> tasks),
    TResult loadFailure(TaskFailure taskFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_DataTransferInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_DataTransferInProgress value),
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

abstract class _LoadSuccess implements TaskWatcherState {
  const factory _LoadSuccess(UnmodifiableListView<Task> tasks) = _$_LoadSuccess;

  UnmodifiableListView<Task> get tasks;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({TaskFailure taskFailure});

  $TaskFailureCopyWith<$Res> get taskFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object taskFailure = freezed,
  }) {
    return _then(_LoadFailure(
      taskFailure == freezed ? _value.taskFailure : taskFailure as TaskFailure,
    ));
  }

  @override
  $TaskFailureCopyWith<$Res> get taskFailure {
    if (_value.taskFailure == null) {
      return null;
    }
    return $TaskFailureCopyWith<$Res>(_value.taskFailure, (value) {
      return _then(_value.copyWith(taskFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.taskFailure) : assert(taskFailure != null);

  @override
  final TaskFailure taskFailure;

  @override
  String toString() {
    return 'TaskWatcherState.loadFailure(taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.taskFailure, taskFailure) ||
                const DeepCollectionEquality()
                    .equals(other.taskFailure, taskFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(taskFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UnmodifiableListView<Task> tasks),
    @required TResult loadFailure(TaskFailure taskFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UnmodifiableListView<Task> tasks),
    TResult loadFailure(TaskFailure taskFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(taskFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_DataTransferInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_DataTransferInProgress value),
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

abstract class _LoadFailure implements TaskWatcherState {
  const factory _LoadFailure(TaskFailure taskFailure) = _$_LoadFailure;

  TaskFailure get taskFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
