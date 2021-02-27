import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/pages/task/task_form/task_form_bloc.dart';

class DeadlineTile extends StatelessWidget {
  const DeadlineTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      buildWhen: (p, c) => p.task.deadline != c.task.deadline,
      builder: (context, state) {
        return ListTile(
          // TODO: find nicer way than fold --> fold --> maybeMap
          leading: state.task.deadline.fold(
            () => Icon(DaylyIcons.deadline),
            (deadline) => deadline.toIcon(
              defaultColor: Theme.of(context).colorScheme.secondaryVariant,
              errorColor: Colors.red,
              warningColor: Colors.yellow
            )
          ),
          title: Text(state.task.deadline.fold(
            () => 'Select deadline',
            (d) => d.toText()
          )),
          onTap: () {
            FocusScope.of(context).unfocus();
            showDatePicker(
              context: context,
              initialDate: state.task.deadline.fold(
                () => DateTime.now(),
                (d) => d.getOrElse((_) => DateTime.now())
              ),
              firstDate: DateTime.now().subtract(Duration(days: 2)),
              lastDate: DateTime.now().add(Duration(days: 365 * 10)),
              builder: (context, child) => Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                    onPrimary: Theme.of(context).colorScheme.onSecondary,
                    primary: Theme.of(context).colorScheme.secondary,
                    primaryVariant: Theme.of(context).colorScheme.secondaryVariant,
                    brightness: Brightness.dark,
                  )
                ),
                child: child
              ),
            ).then((date) {
              if (date != null) {
                context
                  .read<TaskFormBloc>()
                  .add(TaskFormEvent.deadlineChanged(date));
              }
            });
          }
        );
      }
    );
  }
}