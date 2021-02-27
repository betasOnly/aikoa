import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:Dayly/app/core/bloc/calendar/event_actor/event_actor_bloc.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/dialogs.dart';
import 'package:Dayly/app/core/widgets/listview_utils.dart';
import 'package:Dayly/app/core/widgets/progress.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/injection.dart';

import 'event_form/event_form_bloc.dart';
import 'widgets/body_field_widget.dart';
import 'widgets/reminders_list_widget.dart';
import 'widgets/timeslot_tile_widget.dart';
import 'widgets/title_field_widget.dart';

class EventPage extends StatelessWidget {
  final Event event;
  const EventPage({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<EventFormBloc>()
            ..add(EventFormEvent.initialized(optionOf(event)))
        ),
        BlocProvider(
          create: (context) => getIt<EventActorBloc>(),
        ),
      ],
      child: BlocConsumer<EventFormBloc, EventFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                },
                (_) {
                  ExtendedNavigator.of(context).pop();
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const EventPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class EventPageScaffold extends StatelessWidget {
  const EventPageScaffold({Key key}) : super(key: key);

  Future<bool> _showDeleteDialog(BuildContext context) => showDeleteDialog(
    context: context,
    title: 'Delete this event?',
    content: 'This will also remove the event from your calendar app.'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(DaylyIcons.back),
          onPressed: () {
            ExtendedNavigator.of(context).pop();
          }
        ),
        actions: <Widget>[
          BlocBuilder<EventFormBloc, EventFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              if (state.isEditing) {
                return IconButton(
                  icon: Icon(DaylyIcons.delete),
                  onPressed: () async {
                    _showDeleteDialog(context).then((accepted) {
                      if (accepted) {
                        context
                          .read<EventActorBloc>()
                          .add(EventActorEvent.deleted(state.event));
                        ExtendedNavigator.of(context).pop();
                      }
                    });
                  },
                );
              } else {
                return Container();
              }
            }
          )
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<EventFormBloc, EventFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
              child: ListView.separated(
                separatorBuilder: (context, index) => ListViewSeperator(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return TitleField();
                      break;
                    case 1:
                      return TimeSlotTile();
                    case 2:
                      return RemindersList();
                    default:
                      return BodyField();
                  }
                }
              ),
            );
          }
        ),
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text('Save'),
          onPressed: () {
            context
              .read<EventFormBloc>()
              .add(const EventFormEvent.saved());
          },
        ),
      ],
    );
  }
}