import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/domain/contents/content.dart';

import 'cubit/smart_editor_cubit.dart';

extension TextThemeX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

class SmartTextField extends StatefulWidget {
  final ContentItem item;
  final String hintText;
  final VoidCallback onTap;
  final int controllerOffset;
  final bool autofocus;

  const SmartTextField({
    Key key,
    @required this.item,
    this.hintText,
    this.onTap,
    this.controllerOffset,
    this.autofocus=false,
  }) : super(key: key);

  @override
  _SmartTextFieldState createState() => _SmartTextFieldState();
}

class _SmartTextFieldState extends State<SmartTextField> {
  final focusNode = FocusNode();
  final textEditingController = TextEditingController();

  @override
  void initState() { 
    super.initState();
    if (widget.hintText != null) {
      textEditingController.text = (widget.item.body?? '').trim();
      textEditingController.selection = TextSelection.collapsed(
        offset: widget.controllerOffset?? 0
      );
    } else {
      textEditingController.text = '\u200B' + (widget.item.body?? '').trim();
      textEditingController.selection = TextSelection.collapsed(
        offset: (widget.controllerOffset?? 0) + 1
      );
    }
    if (widget.autofocus) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() { 
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  initialize() {
    if (widget.hintText != null) {
      textEditingController.text = (widget.item.body?? '').trim();
      textEditingController.selection = TextSelection.fromPosition(
          TextPosition( offset: widget.controllerOffset?? text.length)
      );
    } else {
      if (text != widget.item.body) {
        textEditingController.text = '\u200B' + (widget.item.body?? '').trim();
        textEditingController.selection = TextSelection.fromPosition(
          TextPosition(offset: (widget.controllerOffset?? text.length) + 1)
        );
      }
    }
    if (widget.autofocus) {
      focusNode.requestFocus();
    }
  }

  String get text => textEditingController.text.replaceAll('\u200B', '');

  String get prefixText => widget.item.maybeMap(orElse: () => '');

  TextStyle get style => widget.item.maybeMap(
    heading1: (_) => context.textTheme.subtitle1
        .copyWith(fontWeight: FontWeight.bold),
    heading2: (_) => context.textTheme.subtitle2
        .copyWith(fontWeight: FontWeight.bold),
    orElse: () => context.textTheme.bodyText2);

  EdgeInsets get padding => widget.item.maybeMap(
    heading1: (_) => EdgeInsets.only(top: 24, bottom: 8),
    heading2: (_) => EdgeInsets.only(top: 8, bottom: 8),
    orElse: () => EdgeInsets.only(top: 8, bottom: 8));

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        // Small hack since onEditingComplete is not firing automatically
        if (hasFocus) {
          widget.onTap();
        } else {
          context
            .read<SmartEditorCubit>()
            .save(widget.item.copyWith(body: text));
        }
      },
      child: TextField(
        controller: textEditingController,
        focusNode: focusNode,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        textCapitalization: TextCapitalization.sentences,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          prefixText: prefixText,
          prefixStyle: style,
          isDense: true,
          contentPadding: padding,
        ),
        style: style,
        onChanged: (value) async {
          await context
            .read<SmartEditorCubit>()
            .update(widget.item.copyWith(body: text));
          if (value.contains('\n')) {
            await context
              .read<SmartEditorCubit>()
              .onEnter(widget.item.copyWith(body: text));
          } else if (!value.startsWith('\u200B')) {
            await context
              .read<SmartEditorCubit>()
              .onRemove(widget.item.copyWith(body: text));
          }
        },
      ),
    );
  }

  @override
  void didUpdateWidget (SmartTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      initialize();
    });
  }
}