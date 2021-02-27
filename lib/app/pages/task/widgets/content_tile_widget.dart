import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/pages/task/task_form/task_form_bloc.dart';
import 'package:Dayly/app/core/components/smart_editor/smart_editor.dart';


class ContentTile extends StatelessWidget {
  ContentTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocBuilder<TaskFormBloc, TaskFormState>(
        // buildWhen: (p, c) => p.task.child != c.task.child,
        builder: (context, state) {
          return state.task.child.fold(
            () => TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Add text...',
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.only(top: 8, bottom: 8),
              ),
              style: Theme.of(context).textTheme.bodyText2,
            ),
            (childId) => SmartTextEditor(pid: childId)
          );
        }
      ),
    );
  }
}