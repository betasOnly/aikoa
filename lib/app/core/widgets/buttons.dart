import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CircularButton({
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 4,
      height: 48,
      minWidth: 48,
      onPressed: onPressed,
      color: Theme.of(context).colorScheme.secondaryVariant,
      child: Icon(
        icon,
        size: 32,
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      shape: CircleBorder(),
    );
  }
}

class TabButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;
  const TabButton({this.icon, this.label, this.onPressed, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Semantics(
        container: true,
        selected: isSelected,
        child: AnimatedContainer(
          width: isSelected ? 112 : 112,
          height: 48,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 8),
          duration: const Duration(milliseconds: 270),
          curve: Curves.linear,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18))
          ),
          child: Opacity(
            opacity: isSelected ? 1.0 : 0.7,
            child: Row(
              children: <Widget>[
                Icon(icon,size: 24, color: Theme.of(context).colorScheme.onPrimary),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(fontWeight: FontWeight.bold,),
                      maxLines: 1,
                      child: Text(label),
                    )
                  ),
                )
              ],
            ),
          )
        )
      ),
    );
  }
}