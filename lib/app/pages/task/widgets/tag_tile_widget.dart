import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/pages/tags/tag_picker/tag_picker_tile.dart';

import '../task_form/task_form_bloc.dart';

class TagTile extends StatelessWidget {
  TagTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      buildWhen: (p, c) => p.task.tag != c.task.tag,
      builder: (context, state) {
        return TagPickerTile(
          initial: state.task.tag.fold(() => null, id),
          onSelected: (tag) {
            context
              .read<TaskFormBloc>()
              .add(TaskFormEvent.tagChanged(tag));
          }
        );
      }
    );
  }
}