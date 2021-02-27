import 'package:flutter/material.dart';

import 'package:Dayly/app/core/icons.dart';


class SmartKeyboardToolbar extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onChange;
  final VoidCallback onDelete;
  final Function(VerticalDirection) onMove;
  final double height;

  SmartKeyboardToolbar({
    Key key,
    this.selected,
    this.onChange,
    this.onDelete,
    this.onMove,
    this.height=40,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Material(
        elevation: 4.0,
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          children: <Widget>[
            ToolbarButton(
              icon: Icon(DaylyIcons.heading1),
              isSelected: selected == 'heading1',
              onPressed: () => onChange('heading1')
            ),
            ToolbarButton(
              icon: Icon(DaylyIcons.heading2),
              isSelected: selected == 'heading2',
              onPressed: () => onChange('heading2')
            ),
            // Spacer(),
            // ToolbarButton(
            //   icon: Icon(DaylyIcons.down),
            //   onPressed: () => onMove(VerticalDirection.down),
            // ),
            // ToolbarButton(
            //   icon: Icon(DaylyIcons.up),
            //   onPressed: () => onMove(VerticalDirection.up),
            // )
            // ToolbarButton(
            //   icon: Icon(DaylyIcons.delete),
            //   onPressed: () => onDelete()
            // )
          ],
        ),
      ),
    );
  }
}


class ToolbarButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;
  final bool isSelected;
  final double height;

  const ToolbarButton({
    Key key,
    this.icon,
    this.onPressed,
    this.isSelected=false,
    this.height=40
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      elevation: 0,
      minWidth: height,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: icon,
      color: isSelected
        ? Theme.of(context).colorScheme.secondaryVariant
        : null,
      onPressed: onPressed,
    );
  }
}