import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/bloc/notes/note_actor/note_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/notes/note_watcher/note_watcher_cubit.dart';
import 'package:Dayly/app/core/widgets/custom_grid_view.dart';
import 'package:Dayly/app/core/widgets/note_card.dart';
import 'package:Dayly/domain/notes/note.dart';

class NotesOverview extends StatelessWidget {
  NotesOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(color: Colors.green, height: 100,),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return CustomGridView(
              itemCount: state.notes.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildCard(context, state.notes[index]);
              },
            );
          },
          loadFailure: (state) {
            return Container(color: Colors.red, height: 100,);
          },
        );
      },
    );
  }

  Widget _buildCard(BuildContext context, Note note) {
    return BlocBuilder<NoteActorBloc, NoteActorState>(
      // buildWhen: (p, c) => p.selected.contains(note) != c.selected.contains(note),
      builder: (context, state) {
        final isSelected = state.selected.contains(note);
        return NoteCard(
          note: note,
          isSelected: isSelected,
          onTap: () {
            if (state.isSelecting) {
              if (isSelected) {
                context
                  .read<NoteActorBloc>()
                  .add(NoteActorEvent.unselected(note));
              } else {
                context
                  .read<NoteActorBloc>()
                  .add(NoteActorEvent.selected(note));
              }
            } else {
              ExtendedNavigator.of(context).push(
                Routes.notePage,
                arguments: NotePageArguments(note: note),
              );
            }
          },
          onLongPress: () {
            if (isSelected) {
              context
                .read<NoteActorBloc>()
                .add(NoteActorEvent.unselected(note));
            } else {
              context
                .read<NoteActorBloc>()
                .add(NoteActorEvent.selected(note));
            }
          },
        );
      }
    );
  }
}
