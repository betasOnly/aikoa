part of 'smart_editor_cubit.dart';

@freezed
abstract class SmartEditorState with _$SmartEditorState {
  factory SmartEditorState({
    GlobalKey<AnimatedListState> listKey,
    List<ContentItem> items,
    int selected,
    String selectedType,
    int controllerOffset
  }) = _SmartEditorState;

  factory SmartEditorState.initial() => SmartEditorState();

  @late
  AnimatedListState get animatedList => listKey?.currentState;

  @late
  int get length => (items?? []).length;
}
