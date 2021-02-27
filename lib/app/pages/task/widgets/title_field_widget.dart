import 'package:Dayly/domain/core/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:Dayly/app/pages/task/task_form/task_form_bloc.dart';

class TitleField extends StatefulWidget {
  const TitleField({Key key}) : super(key: key);

  @override
  _TitleFieldState createState() => _TitleFieldState();
}

class _TitleFieldState extends State<TitleField> {
  final textEditingController = TextEditingController();

  @override
  void dispose() { 
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<TaskFormBloc, TaskFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.task.title.getOrCrash();
      },
      buildWhen: (p, c) => p.task.title != c.task.title,
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 72, right: 16),
            border: InputBorder.none,
            hintText: AppLocalizations.of(context).titleHint,
            counterText: '',
          ),
          style: Theme.of(context).textTheme.headline5
            .copyWith(fontWeight: FontWeight.bold),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          maxLines: null,
          maxLength: CardTitle.maxLength,
          maxLengthEnforced: true,
          onChanged: (value) => context
            .read<TaskFormBloc>()
            .add(TaskFormEvent.titleChanged(value)),
          validator: (_) => context
            .read<TaskFormBloc>()
            .state
            .task
            .title
            .fold(
              (f) => f.maybeMap(
                empty: (f) => AppLocalizations.of(context).requiredField,
                exceedingLength: (f) => AppLocalizations.of(context)
                  .exceedingLength(f.max),
                orElse: () => null,
              ),
              (_) => null,
            ),
        );
      }
    );
  }
}