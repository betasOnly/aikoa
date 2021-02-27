import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../event_form/event_form_bloc.dart';

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
    return  BlocConsumer<EventFormBloc, EventFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.event.title.getOrCrash();
      },
      buildWhen: (p, c) => p.event.title != c.event.title,
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
          maxLines: null,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (value) => context
            .read<EventFormBloc>()
            .add(EventFormEvent.titleChanged(value)),
          validator: (_) => context
            .read<EventFormBloc>()
            .state
            .event
            .title
            .fold(
              (f) => f.maybeMap(
                empty: (f) => AppLocalizations.of(context).requiredField,
                orElse: () => null,
              ),
              (_) => null,
            ),
        );
      }
    );
  }
}