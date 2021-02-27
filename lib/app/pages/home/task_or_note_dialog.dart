import 'dart:ui';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TaskOrNoteDialog extends ModalRoute<void> {

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
        child: Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 80),
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      FloatingActionButton(
                        elevation: 4,
                        onPressed: () {
                          Navigator.of(context).pop();
                          ExtendedNavigator.of(context).push(
                            Routes.taskPage,
                            arguments: TaskPageArguments(task: null),
                          );
                        },
                        child: Icon(DaylyIcons.tasks)
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'Task',
                        style: Theme.of(context).textTheme.headline6
                          .copyWith(
                            color: Colors.white,
                            fontFeatures: [FontFeature.tabularFigures()]
                          )
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FloatingActionButton(
                        elevation: 4,
                        onPressed: () {
                          Navigator.of(context).pop();
                          ExtendedNavigator.of(context).push(
                            Routes.notePage,
                            arguments: NotePageArguments(note: null),
                          );
                        },
                        child: Icon(DaylyIcons.notes)
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'Note',
                        style: Theme.of(context).textTheme.headline6
                          .copyWith(
                            color: Colors.white,
                            fontFeatures: [FontFeature.tabularFigures()]
                          )
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}