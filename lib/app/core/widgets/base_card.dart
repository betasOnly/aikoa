import 'package:flutter/material.dart';

import 'package:Dayly/app/core/icons.dart';

class BaseCard extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final bool isSelected;
  final bool hideSelectedIcon;
  const BaseCard({
    Key key,
    @required this.child,
    this.onTap,
    this.onLongPress,
    this.isSelected=false,
    this.hideSelectedIcon=false,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Card(
        elevation: isSelected ? 8 : 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Stack(
            children: <Widget>[
              child,
              if (isSelected && !hideSelectedIcon) Positioned(
                top: 0,
                right: 0,
                child: Icon(DaylyIcons.selected),
              )
            ],
          )
        )
      ),
    );
  }
}