// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagFormEventTearOff {
  const _$TagFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Tag> initialTagOption) {
    return _Initialized(
      initialTagOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String tagStr) {
    return _NameChanged(
      tagStr,
    );
  }

// ignore: unused_element
  _Deleted deleted() {
    return const _Deleted();
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $TagFormEvent = _$TagFormEventTearOff();

/// @nodoc
mixin _$TagFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Tag> initialTagOption),
    @required TResult nameChanged(String tagStr),
    @required TResult deleted(),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Tag> initialTagOption),
    TResult nameChanged(String tagStr),
    TResult deleted(),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult deleted(_Deleted value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult deleted(_Deleted value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TagFormEventCopyWith<$Res> {
  factory $TagFormEventCopyWith(
          TagFormEvent value, $Res Function(TagFormEvent) then) =
      _$TagFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagFormEventCopyWithImpl<$Res> implements $TagFormEventCopyWith<$Res> {
  _$TagFormEventCopyWithImpl(this._value, this._then);

  final TagFormEvent _value;
  // ignore: unused_field
  final $Res Function(TagFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Tag> initialTagOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TagFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialTagOption = freezed,
  }) {
    return _then(_Initialized(
      initialTagOption == freezed
          ? _value.initialTagOption
          : initialTagOption as Option<Tag>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTagOption)
      : assert(initialTagOption != null);

  @override
  final Option<Tag> initialTagOption;

  @override
  String toString() {
    return 'TagFormEvent.initialized(initialTagOption: $initialTagOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTagOption, initialTagOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTagOption, initialTagOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTagOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Tag> initialTagOption),
    @required TResult nameChanged(String tagStr),
    @required TResult deleted(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return initialized(initialTagOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Tag> initialTagOption),
    TResult nameChanged(String tagStr),
    TResult deleted(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTagOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult deleted(_Deleted value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult deleted(_Deleted value),
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

abstract class _Initialized implements TagFormEvent {
  const factory _Initialized(Option<Tag> initialTagOption) = _$_Initialized;

  Option<Tag> get initialTagOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String tagStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$TagFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object tagStr = freezed,
  }) {
    return _then(_NameChanged(
      tagStr == freezed ? _value.tagStr : tagStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.tagStr) : assert(tagStr != null);

  @override
  final String tagStr;

  @override
  String toString() {
    return 'TagFormEvent.nameChanged(tagStr: $tagStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.tagStr, tagStr) ||
                const DeepCollectionEquality().equals(other.tagStr, tagStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Tag> initialTagOption),
    @required TResult nameChanged(String tagStr),
    @required TResult deleted(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return nameChanged(tagStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Tag> initialTagOption),
    TResult nameChanged(String tagStr),
    TResult deleted(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(tagStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult deleted(_Deleted value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult deleted(_Deleted value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements TagFormEvent {
  const factory _NameChanged(String tagStr) = _$_NameChanged;

  String get tagStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$TagFormEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'TagFormEvent.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Tag> initialTagOption),
    @required TResult nameChanged(String tagStr),
    @required TResult deleted(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Tag> initialTagOption),
    TResult nameChanged(String tagStr),
    TResult deleted(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult deleted(_Deleted value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult deleted(_Deleted value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TagFormEvent {
  const factory _Deleted() = _$_Deleted;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$TagFormEventCopyWithImpl<$Res>
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
    return 'TagFormEvent.saved()';
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
    @required TResult initialized(Option<Tag> initialTagOption),
    @required TResult nameChanged(String tagStr),
    @required TResult deleted(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Tag> initialTagOption),
    TResult nameChanged(String tagStr),
    TResult deleted(),
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
    @required TResult nameChanged(_NameChanged value),
    @required TResult deleted(_Deleted value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(deleted != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult deleted(_Deleted value),
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

abstract class _Saved implements TagFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$TagFormStateTearOff {
  const _$TagFormStateTearOff();

// ignore: unused_element
  _TagFormState call(
      {@required Tag tag,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TagFormState(
      tag: tag,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagFormState = _$TagFormStateTearOff();

/// @nodoc
mixin _$TagFormState {
  Tag get tag;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<TagFailure, Unit>> get saveFailureOrSuccessOption;

  $TagFormStateCopyWith<TagFormState> get copyWith;
}

/// @nodoc
abstract class $TagFormStateCopyWith<$Res> {
  factory $TagFormStateCopyWith(
          TagFormState value, $Res Function(TagFormState) then) =
      _$TagFormStateCopyWithImpl<$Res>;
  $Res call(
      {Tag tag,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagFormStateCopyWithImpl<$Res> implements $TagFormStateCopyWith<$Res> {
  _$TagFormStateCopyWithImpl(this._value, this._then);

  final TagFormState _value;
  // ignore: unused_field
  final $Res Function(TagFormState) _then;

  @override
  $Res call({
    Object tag = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed ? _value.tag : tag as Tag,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TagFailure, Unit>>,
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
abstract class _$TagFormStateCopyWith<$Res>
    implements $TagFormStateCopyWith<$Res> {
  factory _$TagFormStateCopyWith(
          _TagFormState value, $Res Function(_TagFormState) then) =
      __$TagFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Tag tag,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TagFormStateCopyWithImpl<$Res> extends _$TagFormStateCopyWithImpl<$Res>
    implements _$TagFormStateCopyWith<$Res> {
  __$TagFormStateCopyWithImpl(
      _TagFormState _value, $Res Function(_TagFormState) _then)
      : super(_value, (v) => _then(v as _TagFormState));

  @override
  _TagFormState get _value => super._value as _TagFormState;

  @override
  $Res call({
    Object tag = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TagFormState(
      tag: tag == freezed ? _value.tag : tag as Tag,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TagFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TagFormState implements _TagFormState {
  const _$_TagFormState(
      {@required this.tag,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(tag != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Tag tag;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TagFormState(tag: $tag, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagFormState &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
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
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$TagFormStateCopyWith<_TagFormState> get copyWith =>
      __$TagFormStateCopyWithImpl<_TagFormState>(this, _$identity);
}

abstract class _TagFormState implements TagFormState {
  const factory _TagFormState(
          {@required
              Tag tag,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_TagFormState;

  @override
  Tag get tag;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TagFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$TagFormStateCopyWith<_TagFormState> get copyWith;
}
