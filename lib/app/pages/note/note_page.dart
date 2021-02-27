import 'package:Dayly/app/core/components/smart_editor/keyboard_avoider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/notes/note_actor/note_actor_bloc.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/listview_utils.dart';
import 'package:Dayly/app/core/widgets/progress.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/injection.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'note_form/note_form_bloc.dart';
import 'widgets/tag_tile_widget.dart';
import 'widgets/content_tile_widget.dart';
import 'widgets/title_field_widget.dart';


class NotePage extends StatelessWidget {
  final Note note;

  const NotePage({
    Key key,
    @required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NoteFormBloc>()
            ..add(NoteFormEvent.initialized(optionOf(note))),
        ),
        BlocProvider(
          create: (context) => getIt<NoteActorBloc>()
        ),
      ],
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
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
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const NotePageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class NotePageScaffold extends StatefulWidget {
  const NotePageScaffold({
    Key key,
  }) : super(key: key);

  @override
  _NotePageScaffoldState createState() => _NotePageScaffoldState();
}

class _NotePageScaffoldState extends State<NotePageScaffold> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We need to disable the auto paddimng from scaffold for the keyboard
      // avoider
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            if (state.isEditing) {
              return  IconButton(
                icon: Icon(DaylyIcons.back),
                onPressed: () {
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                }
              );
            } else {
              return IconButton(
                icon: Icon(DaylyIcons.back),
                onPressed: () {
                  context
                      .read<NoteActorBloc>()
                      .add(NoteActorEvent.deleted(state.note));
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                }
              );
            }
          }
        ),
        actions: <Widget>[
          BlocBuilder<NoteFormBloc, NoteFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              if (state.isEditing) {
                return IconButton(
                  icon: Icon(DaylyIcons.delete),
                  onPressed: () async {
                    context
                      .read<NoteActorBloc>()
                      .add(NoteActorEvent.deleted(state.note));
                    ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.homePage);
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
        child: KeyboardDismissOnTap(
          child: BlocBuilder<NoteFormBloc, NoteFormState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
                child: KeyboardAvoider(
                  autoScroll: false,
                  child: ListView.separated(
                    controller: _scrollController,
                    separatorBuilder: (context, index) => ListViewSeperator(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return TitleField();
                          break;
                        case 1:
                          return Column(
                            children: [
                              TagTile(),
                            ],
                          );
                        default:
                          return ContentTile();
                      }
                    }
                  ),
                ),
              );
            },
          ),
        ),
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text('Save'),
          onPressed: () {
            context
              .read<NoteFormBloc>()
              .add(const NoteFormEvent.saved());
          },
        ),
      ],
    );
  }
}