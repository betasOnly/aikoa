import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';

class LiteRollingSwitch extends StatefulWidget {
  @required
  final bool value;
  @required
  final Function(bool) onChanged;
  final String textOff;
  final String textOn;
  final Color colorOn;
  final Color colorOff;
  final double textSize;
  final Duration animationDuration;
  final IconData iconOn;
  final IconData iconOff;

  LiteRollingSwitch(
      {Key key,
      this.value = false,
      this.textOff = "Off",
      this.textOn = "On",
      this.textSize = 14.0,
      this.colorOn = Colors.green,
      this.colorOff = Colors.red,
      this.iconOff = Icons.flag,
      this.iconOn = Icons.check,
      this.animationDuration = const Duration(milliseconds: 200),
      this.onChanged})
      : super(key: key);

  @override
  _RollingSwitchState createState() => _RollingSwitchState();
}

class _RollingSwitchState extends State<LiteRollingSwitch>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  double value;

  bool turnState;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    turnState = widget.value;
    value = turnState ? 1 : 0;
    animationController = AnimationController(
        value: value,
        vsync: this,
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: widget.animationDuration);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animationController.addListener(() {
      setState(() {
        value = animation.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Color transitionColor = Color.lerp(widget.colorOff, widget.colorOn, value);

    return GestureDetector(
      onTapDown: (_) {
        _action();
      },
      child: Material(
        elevation: 2,
        color: transitionColor,
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: 112,
          padding: EdgeInsets.all(4),
          child: Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(10 * value, 0), //original
                child: Opacity(
                  opacity: (1 - value).clamp(0.0, 1.0),
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    height: 40,
                    child: Text(
                      widget.textOff,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.textSize),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(10 * (1 - value), 0), //original
                child: Opacity(
                  opacity: value.clamp(0.0, 1.0),
                  child: Container(
                    padding: EdgeInsets.only(/*top: 10,*/ left: 5),
                    alignment: Alignment.centerLeft,
                    height: 40,
                    child: Text(
                      widget.textOn,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.textSize),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(64 * value, 0),
                child: Transform.rotate(
                  angle: lerpDouble(0, 2 * pi, value),
                  child: Material(
                    elevation: 4,
                    shape: CircleBorder(),
                    color: Theme.of(context).colorScheme.surface,
                    child: Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Opacity(
                              opacity: (1 - value).clamp(0.0, 1.0),
                              child: Icon(widget.iconOff,
                                  size: 25,
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                            ),
                          ),
                          Center(
                              child: Opacity(
                                  opacity: value.clamp(0.0, 1.0),
                                  child: Icon(widget.iconOn,
                                      size: 25,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface))),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _action() {
    _determine(changeState: true);
    widget.onChanged(turnState);
  }

  _determine({bool changeState = false}) {
    setState(() {
      if (changeState) turnState = !turnState;
      (turnState)
          ? animationController.forward()
          : animationController.reverse();
    });
  }

  @override
  void didUpdateWidget (LiteRollingSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (turnState != widget.value) _determine(changeState: true);
  }
}
