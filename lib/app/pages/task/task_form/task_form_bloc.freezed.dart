// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskFormEventTearOff {
  const _$TaskFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Task> initialTaskOption) {
    return _Initialized(
      initialTaskOption,
    );
  }

// ignore: unused_element
  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

// ignore: unused_element
  _TagChanged tagChanged(Tag tag) {
    return _TagChanged(
      tag,
    );
  }

// ignore: unused_element
  _DeadlineChanged deadlineChanged(DateTime deadline) {
    return _DeadlineChanged(
      deadline,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $TaskFormEvent = _$TaskFormEventTearOff();

/// @nodoc
mixin _$TaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  final TaskFormEvent _value;
  // ignore: unused_field
  final $Res Function(TaskFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Task> initialTaskOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialTaskOption = freezed,
  }) {
    return _then(_Initialized(
      initialTaskOption == freezed
          ? _value.initialTaskOption
          : initialTaskOption as Option<Task>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTaskOption)
      : assert(initialTaskOption != null);

  @override
  final Option<Task> initialTaskOption;

  @override
  String toString() {
    return 'TaskFormEvent.initialized(initialTaskOption: $initialTaskOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTaskOption, initialTaskOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTaskOption, initialTaskOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTaskOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return initialized(initialTaskOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTaskOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TaskFormEvent {
  const factory _Initialized(Option<Task> initialTaskOption) = _$_Initialized;

  Option<Task> get initialTaskOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

/// @nodoc
class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'TaskFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TaskFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

/// @nodoc
abstract class _$TagChangedCopyWith<$Res> {
  factory _$TagChangedCopyWith(
          _TagChanged value, $Res Function(_TagChanged) then) =
      __$TagChangedCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TagChangedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$TagChangedCopyWith<$Res> {
  __$TagChangedCopyWithImpl(
      _TagChanged _value, $Res Function(_TagChanged) _then)
      : super(_value, (v) => _then(v as _TagChanged));

  @override
  _TagChanged get _value => super._value as _TagChanged;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_TagChanged(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
class _$_TagChanged implements _TagChanged {
  const _$_TagChanged(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TaskFormEvent.tagChanged(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagChanged &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$TagChangedCopyWith<_TagChanged> get copyWith =>
      __$TagChangedCopyWithImpl<_TagChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return tagChanged(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tagChanged != null) {
      return tagChanged(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return tagChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tagChanged != null) {
      return tagChanged(this);
    }
    return orElse();
  }
}

abstract class _TagChanged implements TaskFormEvent {
  const factory _TagChanged(Tag tag) = _$_TagChanged;

  Tag get tag;
  _$TagChangedCopyWith<_TagChanged> get copyWith;
}

/// @nodoc
abstract class _$DeadlineChangedCopyWith<$Res> {
  factory _$DeadlineChangedCopyWith(
          _DeadlineChanged value, $Res Function(_DeadlineChanged) then) =
      __$DeadlineChangedCopyWithImpl<$Res>;
  $Res call({DateTime deadline});
}

/// @nodoc
class __$DeadlineChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$DeadlineChangedCopyWith<$Res> {
  __$DeadlineChangedCopyWithImpl(
      _DeadlineChanged _value, $Res Function(_DeadlineChanged) _then)
      : super(_value, (v) => _then(v as _DeadlineChanged));

  @override
  _DeadlineChanged get _value => super._value as _DeadlineChanged;

  @override
  $Res call({
    Object deadline = freezed,
  }) {
    return _then(_DeadlineChanged(
      deadline == freezed ? _value.deadline : deadline as DateTime,
    ));
  }
}

/// @nodoc
class _$_DeadlineChanged implements _DeadlineChanged {
  const _$_DeadlineChanged(this.deadline) : assert(deadline != null);

  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'TaskFormEvent.deadlineChanged(deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeadlineChanged &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deadline);

  @override
  _$DeadlineChangedCopyWith<_DeadlineChanged> get copyWith =>
      __$DeadlineChangedCopyWithImpl<_DeadlineChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return deadlineChanged(deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deadlineChanged != null) {
      return deadlineChanged(deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return deadlineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deadlineChanged != null) {
      return deadlineChanged(this);
    }
    return orElse();
  }
}

abstract class _DeadlineChanged implements TaskFormEvent {
  const factory _DeadlineChanged(DateTime deadline) = _$_DeadlineChanged;

  DateTime get deadline;
  _$DeadlineChangedCopyWith<_DeadlineChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TaskFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Task> initialTaskOption),
    @required TResult titleChanged(String titleStr),
    @required TResult tagChanged(Tag tag),
    @required TResult deadlineChanged(DateTime deadline),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Task> initialTaskOption),
    TResult titleChanged(String titleStr),
    TResult tagChanged(Tag tag),
    TResult deadlineChanged(DateTime deadline),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult tagChanged(_TagChanged value),
    @required TResult deadlineChanged(_DeadlineChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(tagChanged != null);
    assert(deadlineChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult tagChanged(_TagChanged value),
    TResult deadlineChanged(_DeadlineChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TaskFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$TaskFormStateTearOff {
  const _$TaskFormStateTearOff();

// ignore: unused_element
  _TaskFormState call(
      {@required Task task,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TaskFormState(
      task: task,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskFormState = _$TaskFormStateTearOff();

/// @nodoc
mixin _$TaskFormState {
  Task get task;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption;

  $TaskFormStateCopyWith<TaskFormState> get copyWith;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call(
      {Task task,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object task = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed ? _value.task : task as Task,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
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
abstract class _$TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$TaskFormStateCopyWith(
          _TaskFormState value, $Res Function(_TaskFormState) then) =
      __$TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task task,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$TaskFormStateCopyWith<$Res> {
  __$TaskFormStateCopyWithImpl(
      _TaskFormState _value, $Res Function(_TaskFormState) _then)
      : super(_value, (v) => _then(v as _TaskFormState));

  @override
  _TaskFormState get _value => super._value as _TaskFormState;

  @override
  $Res call({
    Object task = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TaskFormState(
      task: task == freezed ? _value.task : task as Task,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TaskFormState implements _TaskFormState {
  const _$_TaskFormState(
      {@required this.task,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(task != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Task task;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskFormState &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      __$TaskFormStateCopyWithImpl<_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
          {@required
              Task task,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_TaskFormState;

  @override
  Task get task;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith;
}
