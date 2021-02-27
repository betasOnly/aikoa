import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/domain/core/value_objects.dart';

import 'cubit/smart_editor_cubit.dart';
import 'keyboard_toolbar.dart';
import 'smart_text_field.dart';

class SmartTextEditor extends StatefulWidget {
  final UniqueId pid;
  const SmartTextEditor({Key key, this.pid}) : super(key: key);

  @override
  _SmartTextEditorState createState() => _SmartTextEditorState();
}

class _SmartTextEditorState extends State<SmartTextEditor> {
  KeyboardVisibilityController _keyboardVisibilityController;
  OverlayEntry overlayEntry;

  @override
  void initState() {
    super.initState();
    _keyboardVisibilityController = KeyboardVisibilityController();
    _keyboardVisibilityController.onChange.listen((bool visible) {
      if (!visible) {
        removeToolbar();
        FocusScope.of(context).unfocus();
      }
    });
  }

  @override
  void dispose() {
    overlayEntry?.remove();
    super.dispose();
  }

  showToolbar(BuildContext context, [String selected = '']) {
    if (overlayEntry != null) return;
    OverlayState overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (context2) {
      return Positioned(
          bottom: MediaQuery.of(context2).viewInsets.bottom,
          left: 0,
          right: 0,
          height: 40,
          child: SmartKeyboardToolbar(
            selected: selected,
            onChange: (String value) {
              context.read<SmartEditorCubit>().changeType(value);
            },
            onMove: (upOrDown) {},
            onDelete: () {},
          ));
    });

    overlayState.insert(overlayEntry);
  }

  removeToolbar() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SmartEditorCubit>()..initialize(widget.pid),
      child: BlocConsumer<SmartEditorCubit, SmartEditorState>(
        listenWhen: (p, c) => p.selectedType != c.selectedType,
        listener: (context, state) {
          if (overlayEntry != null) {
            removeToolbar();
            showToolbar(context, state.selectedType);
          }
        },
        buildWhen: (p, c) => p.listKey != c.listKey,
        builder: (context, state) {
          return AnimatedList(
            key: state.listKey,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            initialItemCount: state.length,
            itemBuilder: (context, index, animation) {
              return BlocBuilder<SmartEditorCubit, SmartEditorState>(
                buildWhen: (p, c) => p.selected == index || c.selected == index,
                builder: (context, state) {
                  return SmartTextField(
                    item: state.items[index],
                    hintText:
                        index == 0 && state.length == 1 ? 'Add text...' : null,
                    onTap: () {
                      context.read<SmartEditorCubit>().select(index);
                      showToolbar(context);
                    },
                    controllerOffset: state.selected == index
                      ? state.controllerOffset
                      : null,
                    autofocus: state.selected == index,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
