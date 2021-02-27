import 'package:flutter/material.dart';

import 'package:Dayly/app/core/icons.dart';

class ActionBar extends StatelessWidget {
  final int numSelected;
  final VoidCallback onDeletePressed;
  final VoidCallback onUndoPressed;
  const ActionBar({Key key, this.numSelected, this.onDeletePressed, this.onUndoPressed}):
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(DaylyIcons.undo),
          onPressed: onUndoPressed
        ),
        Text(
          '$numSelected',
          style: Theme.of(context).textTheme.button,
        ),
        Spacer(),
        IconButton(
          icon: Icon(DaylyIcons.delete),
          onPressed: onDeletePressed
        ),
      ],
    );
  }
}