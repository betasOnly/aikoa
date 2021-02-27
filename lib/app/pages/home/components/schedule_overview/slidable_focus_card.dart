import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:Dayly/app/core/bloc/schedule/focus/focus_bloc.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

import 'focus_card.dart';

class SlidableFocusCard extends StatelessWidget {
  final TimeBox timebox;
  const SlidableFocusCard({Key key, this.timebox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (timebox.end == null || timebox.end.isBefore(DateTime.now())) {
        Slidable.of(context)?.open(actionType: SlideActionType.secondary);
      }
    });
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Dismissible(
        key: ValueKey(timebox),
        direction: DismissDirection.up,
        onDismissed: (direction) {
          context
            .read<FocusBloc>()
            .add(FocusEvent.unfocus());
        },
        child: FocusCard(eventOrTimebox: right(timebox))
      ),
      secondaryActions: <Widget>[
        SlideAction(
          child: Card(
              elevation: 4,
              color: Theme.of(context).colorScheme.surface,
              child: Center(child: Icon(DaylyIcons.done))),
          onTap: () {
            context
            .read<FocusBloc>()
            .add(FocusEvent.done());
          },
          closeOnTap: true,
        )
      ],
    );
  }
}