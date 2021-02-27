// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskActorEventTearOff {
  const _$TaskActorEventTearOff();

// ignore: unused_element
  _Selected selected(Task task) {
    return _Selected(
      task,
    );
  }

// ignore: unused_element
  _Unselected unselected(Task task) {
    return _Unselected(
      task,
    );
  }

// ignore: unused_element
  _UnselectedAll unselectedAll() {
    return const _UnselectedAll();
  }

// ignore: unused_element
  _Deleted deleted(Task task) {
    return _Deleted(
      task,
    );
  }

// ignore: unused_element
  _Archived archived(Task task) {
    return _Archived(
      task,
    );
  }

// ignore: unused_element
  _DeletedAll deletedAll() {
    return const _DeletedAll();
  }

// ignore: unused_element
  _ArchivedAll archivedAll() {
    return const _ArchivedAll();
  }
}

/// @nodoc
// ignore: unused_element
const $TaskActorEvent = _$TaskActorEventTearOff();

/// @nodoc
mixin _$TaskActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TaskActorEventCopyWith<$Res> {
  factory $TaskActorEventCopyWith(
          TaskActorEvent value, $Res Function(TaskActorEvent) then) =
      _$TaskActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskActorEventCopyWithImpl<$Res>
    implements $TaskActorEventCopyWith<$Res> {
  _$TaskActorEventCopyWithImpl(this._value, this._then);

  final TaskActorEvent _value;
  // ignore: unused_field
  final $Res Function(TaskActorEvent) _then;
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Selected(
      task == freezed ? _value.task : task as Task,
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
class _$_Selected implements _Selected {
  const _$_Selected(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.selected(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Selected &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return selected(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements TaskActorEvent {
  const factory _Selected(Task task) = _$_Selected;

  Task get task;
  _$SelectedCopyWith<_Selected> get copyWith;
}

/// @nodoc
abstract class _$UnselectedCopyWith<$Res> {
  factory _$UnselectedCopyWith(
          _Unselected value, $Res Function(_Unselected) then) =
      __$UnselectedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$UnselectedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$UnselectedCopyWith<$Res> {
  __$UnselectedCopyWithImpl(
      _Unselected _value, $Res Function(_Unselected) _then)
      : super(_value, (v) => _then(v as _Unselected));

  @override
  _Unselected get _value => super._value as _Unselected;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Unselected(
      task == freezed ? _value.task : task as Task,
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
class _$_Unselected implements _Unselected {
  const _$_Unselected(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.unselected(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unselected &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @override
  _$UnselectedCopyWith<_Unselected> get copyWith =>
      __$UnselectedCopyWithImpl<_Unselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return unselected(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class _Unselected implements TaskActorEvent {
  const factory _Unselected(Task task) = _$_Unselected;

  Task get task;
  _$UnselectedCopyWith<_Unselected> get copyWith;
}

/// @nodoc
abstract class _$UnselectedAllCopyWith<$Res> {
  factory _$UnselectedAllCopyWith(
          _UnselectedAll value, $Res Function(_UnselectedAll) then) =
      __$UnselectedAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnselectedAllCopyWithImpl<$Res>
    extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$UnselectedAllCopyWith<$Res> {
  __$UnselectedAllCopyWithImpl(
      _UnselectedAll _value, $Res Function(_UnselectedAll) _then)
      : super(_value, (v) => _then(v as _UnselectedAll));

  @override
  _UnselectedAll get _value => super._value as _UnselectedAll;
}

/// @nodoc
class _$_UnselectedAll implements _UnselectedAll {
  const _$_UnselectedAll();

  @override
  String toString() {
    return 'TaskActorEvent.unselectedAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnselectedAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return unselectedAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselectedAll != null) {
      return unselectedAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return unselectedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselectedAll != null) {
      return unselectedAll(this);
    }
    return orElse();
  }
}

abstract class _UnselectedAll implements TaskActorEvent {
  const factory _UnselectedAll() = _$_UnselectedAll;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Deleted(
      task == freezed ? _value.task : task as Task,
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
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.deleted(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return deleted(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TaskActorEvent {
  const factory _Deleted(Task task) = _$_Deleted;

  Task get task;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
abstract class _$ArchivedCopyWith<$Res> {
  factory _$ArchivedCopyWith(_Archived value, $Res Function(_Archived) then) =
      __$ArchivedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$ArchivedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$ArchivedCopyWith<$Res> {
  __$ArchivedCopyWithImpl(_Archived _value, $Res Function(_Archived) _then)
      : super(_value, (v) => _then(v as _Archived));

  @override
  _Archived get _value => super._value as _Archived;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Archived(
      task == freezed ? _value.task : task as Task,
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
class _$_Archived implements _Archived {
  const _$_Archived(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.archived(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Archived &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @override
  _$ArchivedCopyWith<_Archived> get copyWith =>
      __$ArchivedCopyWithImpl<_Archived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return archived(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archived != null) {
      return archived(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return archived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archived != null) {
      return archived(this);
    }
    return orElse();
  }
}

abstract class _Archived implements TaskActorEvent {
  const factory _Archived(Task task) = _$_Archived;

  Task get task;
  _$ArchivedCopyWith<_Archived> get copyWith;
}

/// @nodoc
abstract class _$DeletedAllCopyWith<$Res> {
  factory _$DeletedAllCopyWith(
          _DeletedAll value, $Res Function(_DeletedAll) then) =
      __$DeletedAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedAllCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$DeletedAllCopyWith<$Res> {
  __$DeletedAllCopyWithImpl(
      _DeletedAll _value, $Res Function(_DeletedAll) _then)
      : super(_value, (v) => _then(v as _DeletedAll));

  @override
  _DeletedAll get _value => super._value as _DeletedAll;
}

/// @nodoc
class _$_DeletedAll implements _DeletedAll {
  const _$_DeletedAll();

  @override
  String toString() {
    return 'TaskActorEvent.deletedAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletedAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return deletedAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedAll != null) {
      return deletedAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return deletedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedAll != null) {
      return deletedAll(this);
    }
    return orElse();
  }
}

abstract class _DeletedAll implements TaskActorEvent {
  const factory _DeletedAll() = _$_DeletedAll;
}

/// @nodoc
abstract class _$ArchivedAllCopyWith<$Res> {
  factory _$ArchivedAllCopyWith(
          _ArchivedAll value, $Res Function(_ArchivedAll) then) =
      __$ArchivedAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArchivedAllCopyWithImpl<$Res>
    extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$ArchivedAllCopyWith<$Res> {
  __$ArchivedAllCopyWithImpl(
      _ArchivedAll _value, $Res Function(_ArchivedAll) _then)
      : super(_value, (v) => _then(v as _ArchivedAll));

  @override
  _ArchivedAll get _value => super._value as _ArchivedAll;
}

/// @nodoc
class _$_ArchivedAll implements _ArchivedAll {
  const _$_ArchivedAll();

  @override
  String toString() {
    return 'TaskActorEvent.archivedAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ArchivedAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Task task),
    @required TResult unselected(Task task),
    @required TResult unselectedAll(),
    @required TResult deleted(Task task),
    @required TResult archived(Task task),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return archivedAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Task task),
    TResult unselected(Task task),
    TResult unselectedAll(),
    TResult deleted(Task task),
    TResult archived(Task task),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archivedAll != null) {
      return archivedAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selected(_Selected value),
    @required TResult unselected(_Unselected value),
    @required TResult unselectedAll(_UnselectedAll value),
    @required TResult deleted(_Deleted value),
    @required TResult archived(_Archived value),
    @required TResult deletedAll(_DeletedAll value),
    @required TResult archivedAll(_ArchivedAll value),
  }) {
    assert(selected != null);
    assert(unselected != null);
    assert(unselectedAll != null);
    assert(deleted != null);
    assert(archived != null);
    assert(deletedAll != null);
    assert(archivedAll != null);
    return archivedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selected(_Selected value),
    TResult unselected(_Unselected value),
    TResult unselectedAll(_UnselectedAll value),
    TResult deleted(_Deleted value),
    TResult archived(_Archived value),
    TResult deletedAll(_DeletedAll value),
    TResult archivedAll(_ArchivedAll value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archivedAll != null) {
      return archivedAll(this);
    }
    return orElse();
  }
}

abstract class _ArchivedAll implements TaskActorEvent {
  const factory _ArchivedAll() = _$_ArchivedAll;
}

/// @nodoc
class _$TaskActorStateTearOff {
  const _$TaskActorStateTearOff();

// ignore: unused_element
  _TaskActorState call(
      {@required
          List<Task> selected,
      @required
          int numSelected,
      @required
          Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<TaskFailure, Unit>> archiveFailureOrSuccessOption}) {
    return _TaskActorState(
      selected: selected,
      numSelected: numSelected,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskActorState = _$TaskActorStateTearOff();

/// @nodoc
mixin _$TaskActorState {
  List<Task> get selected;
  int get numSelected;
  Option<Either<TaskFailure, Unit>> get deleteFailureOrSuccessOption;
  Option<Either<TaskFailure, Unit>> get archiveFailureOrSuccessOption;

  $TaskActorStateCopyWith<TaskActorState> get copyWith;
}

/// @nodoc
abstract class $TaskActorStateCopyWith<$Res> {
  factory $TaskActorStateCopyWith(
          TaskActorState value, $Res Function(TaskActorState) then) =
      _$TaskActorStateCopyWithImpl<$Res>;
  $Res call(
      {List<Task> selected,
      int numSelected,
      Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption,
      Option<Either<TaskFailure, Unit>> archiveFailureOrSuccessOption});
}

/// @nodoc
class _$TaskActorStateCopyWithImpl<$Res>
    implements $TaskActorStateCopyWith<$Res> {
  _$TaskActorStateCopyWithImpl(this._value, this._then);

  final TaskActorState _value;
  // ignore: unused_field
  final $Res Function(TaskActorState) _then;

  @override
  $Res call({
    Object selected = freezed,
    Object numSelected = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object archiveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      selected: selected == freezed ? _value.selected : selected as List<Task>,
      numSelected:
          numSelected == freezed ? _value.numSelected : numSelected as int,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption == freezed
          ? _value.archiveFailureOrSuccessOption
          : archiveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$TaskActorStateCopyWith<$Res>
    implements $TaskActorStateCopyWith<$Res> {
  factory _$TaskActorStateCopyWith(
          _TaskActorState value, $Res Function(_TaskActorState) then) =
      __$TaskActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Task> selected,
      int numSelected,
      Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption,
      Option<Either<TaskFailure, Unit>> archiveFailureOrSuccessOption});
}

/// @nodoc
class __$TaskActorStateCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$TaskActorStateCopyWith<$Res> {
  __$TaskActorStateCopyWithImpl(
      _TaskActorState _value, $Res Function(_TaskActorState) _then)
      : super(_value, (v) => _then(v as _TaskActorState));

  @override
  _TaskActorState get _value => super._value as _TaskActorState;

  @override
  $Res call({
    Object selected = freezed,
    Object numSelected = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object archiveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TaskActorState(
      selected: selected == freezed ? _value.selected : selected as List<Task>,
      numSelected:
          numSelected == freezed ? _value.numSelected : numSelected as int,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption == freezed
          ? _value.archiveFailureOrSuccessOption
          : archiveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TaskActorState implements _TaskActorState {
  _$_TaskActorState(
      {@required this.selected,
      @required this.numSelected,
      @required this.deleteFailureOrSuccessOption,
      @required this.archiveFailureOrSuccessOption})
      : assert(selected != null),
        assert(numSelected != null),
        assert(deleteFailureOrSuccessOption != null),
        assert(archiveFailureOrSuccessOption != null);

  @override
  final List<Task> selected;
  @override
  final int numSelected;
  @override
  final Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption;
  @override
  final Option<Either<TaskFailure, Unit>> archiveFailureOrSuccessOption;

  bool _didisSelecting = false;
  bool _isSelecting;

  @override
  bool get isSelecting {
    if (_didisSelecting == false) {
      _didisSelecting = true;
      _isSelecting = numSelected > 0;
    }
    return _isSelecting;
  }

  @override
  String toString() {
    return 'TaskActorState(selected: $selected, numSelected: $numSelected, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, archiveFailureOrSuccessOption: $archiveFailureOrSuccessOption, isSelecting: $isSelecting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskActorState &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.numSelected, numSelected) ||
                const DeepCollectionEquality()
                    .equals(other.numSelected, numSelected)) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption)) &&
            (identical(other.archiveFailureOrSuccessOption,
                    archiveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.archiveFailureOrSuccessOption,
                    archiveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(numSelected) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(archiveFailureOrSuccessOption);

  @override
  _$TaskActorStateCopyWith<_TaskActorState> get copyWith =>
      __$TaskActorStateCopyWithImpl<_TaskActorState>(this, _$identity);
}

abstract class _TaskActorState implements TaskActorState {
  factory _TaskActorState(
      {@required
          List<Task> selected,
      @required
          int numSelected,
      @required
          Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<TaskFailure, Unit>>
              archiveFailureOrSuccessOption}) = _$_TaskActorState;

  @override
  List<Task> get selected;
  @override
  int get numSelected;
  @override
  Option<Either<TaskFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  Option<Either<TaskFailure, Unit>> get archiveFailureOrSuccessOption;
  @override
  _$TaskActorStateCopyWith<_TaskActorState> get copyWith;
}
