import 'package:Dayly/app/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ShutdownPage extends ModalRoute<void> {

  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.87);

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation) {

    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Shutdown Complete',
                      style: Theme.of(context).textTheme.headline4
                        .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.white.withOpacity(0.87),
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Text('Plan Tomorrow'),
                      onPressed: () {
                        Navigator.of(context).pop();
                        ExtendedNavigator.of(context).push(
                            Routes.schedulingPage);
                        ExtendedNavigator.of(context).push(
                            Routes.selectTasksDialog);
                      }
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      child: Text('Not now'),
                      onPressed: Navigator.of(context).pop
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}