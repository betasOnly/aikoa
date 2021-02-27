// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'smart_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SmartEditorStateTearOff {
  const _$SmartEditorStateTearOff();

// ignore: unused_element
  _SmartEditorState call(
      {GlobalKey<AnimatedListState> listKey,
      List<ContentItem> items,
      int selected,
      String selectedType,
      int controllerOffset}) {
    return _SmartEditorState(
      listKey: listKey,
      items: items,
      selected: selected,
      selectedType: selectedType,
      controllerOffset: controllerOffset,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SmartEditorState = _$SmartEditorStateTearOff();

/// @nodoc
mixin _$SmartEditorState {
  GlobalKey<AnimatedListState> get listKey;
  List<ContentItem> get items;
  int get selected;
  String get selectedType;
  int get controllerOffset;

  $SmartEditorStateCopyWith<SmartEditorState> get copyWith;
}

/// @nodoc
abstract class $SmartEditorStateCopyWith<$Res> {
  factory $SmartEditorStateCopyWith(
          SmartEditorState value, $Res Function(SmartEditorState) then) =
      _$SmartEditorStateCopyWithImpl<$Res>;
  $Res call(
      {GlobalKey<AnimatedListState> listKey,
      List<ContentItem> items,
      int selected,
      String selectedType,
      int controllerOffset});
}

/// @nodoc
class _$SmartEditorStateCopyWithImpl<$Res>
    implements $SmartEditorStateCopyWith<$Res> {
  _$SmartEditorStateCopyWithImpl(this._value, this._then);

  final SmartEditorState _value;
  // ignore: unused_field
  final $Res Function(SmartEditorState) _then;

  @override
  $Res call({
    Object listKey = freezed,
    Object items = freezed,
    Object selected = freezed,
    Object selectedType = freezed,
    Object controllerOffset = freezed,
  }) {
    return _then(_value.copyWith(
      listKey: listKey == freezed
          ? _value.listKey
          : listKey as GlobalKey<AnimatedListState>,
      items: items == freezed ? _value.items : items as List<ContentItem>,
      selected: selected == freezed ? _value.selected : selected as int,
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType as String,
      controllerOffset: controllerOffset == freezed
          ? _value.controllerOffset
          : controllerOffset as int,
    ));
  }
}

/// @nodoc
abstract class _$SmartEditorStateCopyWith<$Res>
    implements $SmartEditorStateCopyWith<$Res> {
  factory _$SmartEditorStateCopyWith(
          _SmartEditorState value, $Res Function(_SmartEditorState) then) =
      __$SmartEditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GlobalKey<AnimatedListState> listKey,
      List<ContentItem> items,
      int selected,
      String selectedType,
      int controllerOffset});
}

/// @nodoc
class __$SmartEditorStateCopyWithImpl<$Res>
    extends _$SmartEditorStateCopyWithImpl<$Res>
    implements _$SmartEditorStateCopyWith<$Res> {
  __$SmartEditorStateCopyWithImpl(
      _SmartEditorState _value, $Res Function(_SmartEditorState) _then)
      : super(_value, (v) => _then(v as _SmartEditorState));

  @override
  _SmartEditorState get _value => super._value as _SmartEditorState;

  @override
  $Res call({
    Object listKey = freezed,
    Object items = freezed,
    Object selected = freezed,
    Object selectedType = freezed,
    Object controllerOffset = freezed,
  }) {
    return _then(_SmartEditorState(
      listKey: listKey == freezed
          ? _value.listKey
          : listKey as GlobalKey<AnimatedListState>,
      items: items == freezed ? _value.items : items as List<ContentItem>,
      selected: selected == freezed ? _value.selected : selected as int,
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType as String,
      controllerOffset: controllerOffset == freezed
          ? _value.controllerOffset
          : controllerOffset as int,
    ));
  }
}

/// @nodoc
class _$_SmartEditorState implements _SmartEditorState {
  _$_SmartEditorState(
      {this.listKey,
      this.items,
      this.selected,
      this.selectedType,
      this.controllerOffset});

  @override
  final GlobalKey<AnimatedListState> listKey;
  @override
  final List<ContentItem> items;
  @override
  final int selected;
  @override
  final String selectedType;
  @override
  final int controllerOffset;

  bool _didanimatedList = false;
  AnimatedListState _animatedList;

  @override
  AnimatedListState get animatedList {
    if (_didanimatedList == false) {
      _didanimatedList = true;
      _animatedList = listKey?.currentState;
    }
    return _animatedList;
  }

  bool _didlength = false;
  int _length;

  @override
  int get length {
    if (_didlength == false) {
      _didlength = true;
      _length = (items ?? []).length;
    }
    return _length;
  }

  @override
  String toString() {
    return 'SmartEditorState(listKey: $listKey, items: $items, selected: $selected, selectedType: $selectedType, controllerOffset: $controllerOffset, animatedList: $animatedList, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SmartEditorState &&
            (identical(other.listKey, listKey) ||
                const DeepCollectionEquality()
                    .equals(other.listKey, listKey)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.selectedType, selectedType) ||
                const DeepCollectionEquality()
                    .equals(other.selectedType, selectedType)) &&
            (identical(other.controllerOffset, controllerOffset) ||
                const DeepCollectionEquality()
                    .equals(other.controllerOffset, controllerOffset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listKey) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(selectedType) ^
      const DeepCollectionEquality().hash(controllerOffset);

  @override
  _$SmartEditorStateCopyWith<_SmartEditorState> get copyWith =>
      __$SmartEditorStateCopyWithImpl<_SmartEditorState>(this, _$identity);
}

abstract class _SmartEditorState implements SmartEditorState {
  factory _SmartEditorState(
      {GlobalKey<AnimatedListState> listKey,
      List<ContentItem> items,
      int selected,
      String selectedType,
      int controllerOffset}) = _$_SmartEditorState;

  @override
  GlobalKey<AnimatedListState> get listKey;
  @override
  List<ContentItem> get items;
  @override
  int get selected;
  @override
  String get selectedType;
  @override
  int get controllerOffset;
  @override
  _$SmartEditorStateCopyWith<_SmartEditorState> get copyWith;
}
