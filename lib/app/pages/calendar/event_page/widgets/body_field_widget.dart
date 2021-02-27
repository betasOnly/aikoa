import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../event_form/event_form_bloc.dart';

class BodyField extends StatefulWidget {
  final Function(String) onSubmitted;
  const BodyField({Key key, this.onSubmitted}) : super(key: key);

  @override
  _BodyFieldState createState() => _BodyFieldState();
}

class _BodyFieldState extends State<BodyField> {
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
        textEditingController.text = state.event.body.fold(
          () => '', (body) => body.getOrCrash());
      },
      buildWhen: (p, c) => p.event.title != c.event.title,
      builder: (context, state) {
        return ListTile(
          // leading: Icon(DaylyIcons.notes),
          title: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppLocalizations.of(context).bodyHint,
              counterText: '',
            ),
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            maxLines: null,
            onChanged: (value) => context
              .read<EventFormBloc>()
              .add(EventFormEvent.bodyChanged(value)),
            onFieldSubmitted: widget.onSubmitted,
          ),
        );
      }
    );
  }
}