import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/pages/tags/tag_picker/tag_picker_tile.dart';

import '../note_form/note_form_bloc.dart';

class TagTile extends StatelessWidget {
  TagTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (p, c) => p.note.tag != c.note.tag,
      builder: (context, state) {
        return TagPickerTile(
          initial: state.note.tag.fold(() => null, id),
          onSelected: (tag) {
            context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.tagChanged(tag));
          }
        );
      }
    );
  }
}