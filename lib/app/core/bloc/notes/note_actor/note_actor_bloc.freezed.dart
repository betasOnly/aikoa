// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteActorEventTearOff {
  const _$NoteActorEventTearOff();

// ignore: unused_element
  _Selected selected(Note note) {
    return _Selected(
      note,
    );
  }

// ignore: unused_element
  _Unselected unselected(Note note) {
    return _Unselected(
      note,
    );
  }

// ignore: unused_element
  _UnselectedAll unselectedAll() {
    return const _UnselectedAll();
  }

// ignore: unused_element
  _Deleted deleted(Note note) {
    return _Deleted(
      note,
    );
  }

// ignore: unused_element
  _Archived archived(Note note) {
    return _Archived(
      note,
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
const $NoteActorEvent = _$NoteActorEventTearOff();

/// @nodoc
mixin _$NoteActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
    @required TResult deletedAll(),
    @required TResult archivedAll(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
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
abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteActorEventCopyWithImpl<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  final NoteActorEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActorEvent) _then;
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Selected(
      note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
class _$_Selected implements _Selected {
  const _$_Selected(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.selected(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Selected &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    return selected(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(note);
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

abstract class _Selected implements NoteActorEvent {
  const factory _Selected(Note note) = _$_Selected;

  Note get note;
  _$SelectedCopyWith<_Selected> get copyWith;
}

/// @nodoc
abstract class _$UnselectedCopyWith<$Res> {
  factory _$UnselectedCopyWith(
          _Unselected value, $Res Function(_Unselected) then) =
      __$UnselectedCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$UnselectedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$UnselectedCopyWith<$Res> {
  __$UnselectedCopyWithImpl(
      _Unselected _value, $Res Function(_Unselected) _then)
      : super(_value, (v) => _then(v as _Unselected));

  @override
  _Unselected get _value => super._value as _Unselected;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Unselected(
      note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
class _$_Unselected implements _Unselected {
  const _$_Unselected(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.unselected(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unselected &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$UnselectedCopyWith<_Unselected> get copyWith =>
      __$UnselectedCopyWithImpl<_Unselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    return unselected(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(note);
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

abstract class _Unselected implements NoteActorEvent {
  const factory _Unselected(Note note) = _$_Unselected;

  Note get note;
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
    extends _$NoteActorEventCopyWithImpl<$Res>
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
    return 'NoteActorEvent.unselectedAll()';
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
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
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

abstract class _UnselectedAll implements NoteActorEvent {
  const factory _UnselectedAll() = _$_UnselectedAll;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Deleted(
      note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(note);
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

abstract class _Deleted implements NoteActorEvent {
  const factory _Deleted(Note note) = _$_Deleted;

  Note get note;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
abstract class _$ArchivedCopyWith<$Res> {
  factory _$ArchivedCopyWith(_Archived value, $Res Function(_Archived) then) =
      __$ArchivedCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$ArchivedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$ArchivedCopyWith<$Res> {
  __$ArchivedCopyWithImpl(_Archived _value, $Res Function(_Archived) _then)
      : super(_value, (v) => _then(v as _Archived));

  @override
  _Archived get _value => super._value as _Archived;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Archived(
      note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
class _$_Archived implements _Archived {
  const _$_Archived(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.archived(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Archived &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$ArchivedCopyWith<_Archived> get copyWith =>
      __$ArchivedCopyWithImpl<_Archived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    return archived(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
    TResult deletedAll(),
    TResult archivedAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archived != null) {
      return archived(note);
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

abstract class _Archived implements NoteActorEvent {
  const factory _Archived(Note note) = _$_Archived;

  Note get note;
  _$ArchivedCopyWith<_Archived> get copyWith;
}

/// @nodoc
abstract class _$DeletedAllCopyWith<$Res> {
  factory _$DeletedAllCopyWith(
          _DeletedAll value, $Res Function(_DeletedAll) then) =
      __$DeletedAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedAllCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
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
    return 'NoteActorEvent.deletedAll()';
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
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
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

abstract class _DeletedAll implements NoteActorEvent {
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
    extends _$NoteActorEventCopyWithImpl<$Res>
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
    return 'NoteActorEvent.archivedAll()';
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
    @required TResult selected(Note note),
    @required TResult unselected(Note note),
    @required TResult unselectedAll(),
    @required TResult deleted(Note note),
    @required TResult archived(Note note),
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
    TResult selected(Note note),
    TResult unselected(Note note),
    TResult unselectedAll(),
    TResult deleted(Note note),
    TResult archived(Note note),
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

abstract class _ArchivedAll implements NoteActorEvent {
  const factory _ArchivedAll() = _$_ArchivedAll;
}

/// @nodoc
class _$NoteActorStateTearOff {
  const _$NoteActorStateTearOff();

// ignore: unused_element
  _NoteActorState call(
      {@required
          List<Note> selected,
      @required
          int numSelected,
      @required
          Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NoteFailure, Unit>> archiveFailureOrSuccessOption}) {
    return _NoteActorState(
      selected: selected,
      numSelected: numSelected,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteActorState = _$NoteActorStateTearOff();

/// @nodoc
mixin _$NoteActorState {
  List<Note> get selected;
  int get numSelected;
  Option<Either<NoteFailure, Unit>> get deleteFailureOrSuccessOption;
  Option<Either<NoteFailure, Unit>> get archiveFailureOrSuccessOption;

  $NoteActorStateCopyWith<NoteActorState> get copyWith;
}

/// @nodoc
abstract class $NoteActorStateCopyWith<$Res> {
  factory $NoteActorStateCopyWith(
          NoteActorState value, $Res Function(NoteActorState) then) =
      _$NoteActorStateCopyWithImpl<$Res>;
  $Res call(
      {List<Note> selected,
      int numSelected,
      Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NoteFailure, Unit>> archiveFailureOrSuccessOption});
}

/// @nodoc
class _$NoteActorStateCopyWithImpl<$Res>
    implements $NoteActorStateCopyWith<$Res> {
  _$NoteActorStateCopyWithImpl(this._value, this._then);

  final NoteActorState _value;
  // ignore: unused_field
  final $Res Function(NoteActorState) _then;

  @override
  $Res call({
    Object selected = freezed,
    Object numSelected = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object archiveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      selected: selected == freezed ? _value.selected : selected as List<Note>,
      numSelected:
          numSelected == freezed ? _value.numSelected : numSelected as int,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption == freezed
          ? _value.archiveFailureOrSuccessOption
          : archiveFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$NoteActorStateCopyWith<$Res>
    implements $NoteActorStateCopyWith<$Res> {
  factory _$NoteActorStateCopyWith(
          _NoteActorState value, $Res Function(_NoteActorState) then) =
      __$NoteActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Note> selected,
      int numSelected,
      Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NoteFailure, Unit>> archiveFailureOrSuccessOption});
}

/// @nodoc
class __$NoteActorStateCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$NoteActorStateCopyWith<$Res> {
  __$NoteActorStateCopyWithImpl(
      _NoteActorState _value, $Res Function(_NoteActorState) _then)
      : super(_value, (v) => _then(v as _NoteActorState));

  @override
  _NoteActorState get _value => super._value as _NoteActorState;

  @override
  $Res call({
    Object selected = freezed,
    Object numSelected = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object archiveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NoteActorState(
      selected: selected == freezed ? _value.selected : selected as List<Note>,
      numSelected:
          numSelected == freezed ? _value.numSelected : numSelected as int,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
      archiveFailureOrSuccessOption: archiveFailureOrSuccessOption == freezed
          ? _value.archiveFailureOrSuccessOption
          : archiveFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_NoteActorState implements _NoteActorState {
  _$_NoteActorState(
      {@required this.selected,
      @required this.numSelected,
      @required this.deleteFailureOrSuccessOption,
      @required this.archiveFailureOrSuccessOption})
      : assert(selected != null),
        assert(numSelected != null),
        assert(deleteFailureOrSuccessOption != null),
        assert(archiveFailureOrSuccessOption != null);

  @override
  final List<Note> selected;
  @override
  final int numSelected;
  @override
  final Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption;
  @override
  final Option<Either<NoteFailure, Unit>> archiveFailureOrSuccessOption;

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
    return 'NoteActorState(selected: $selected, numSelected: $numSelected, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, archiveFailureOrSuccessOption: $archiveFailureOrSuccessOption, isSelecting: $isSelecting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteActorState &&
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
  _$NoteActorStateCopyWith<_NoteActorState> get copyWith =>
      __$NoteActorStateCopyWithImpl<_NoteActorState>(this, _$identity);
}

abstract class _NoteActorState implements NoteActorState {
  factory _NoteActorState(
      {@required
          List<Note> selected,
      @required
          int numSelected,
      @required
          Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NoteFailure, Unit>>
              archiveFailureOrSuccessOption}) = _$_NoteActorState;

  @override
  List<Note> get selected;
  @override
  int get numSelected;
  @override
  Option<Either<NoteFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  Option<Either<NoteFailure, Unit>> get archiveFailureOrSuccessOption;
  @override
  _$NoteActorStateCopyWith<_NoteActorState> get copyWith;
}
