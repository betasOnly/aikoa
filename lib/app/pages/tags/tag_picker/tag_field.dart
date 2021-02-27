import 'package:Dayly/domain/tags/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:Dayly/domain/core/value_objects.dart';

import 'tag_form/tag_form_bloc.dart';

class TagField extends StatefulWidget {
  final bool autofocus;
  final ValueChanged<Tag> onSubmit;
  const TagField({Key key, @required this.onSubmit, this.autofocus=false})
      : super(key: key);

  @override
  _TagFieldState createState() => _TagFieldState();
}

class _TagFieldState extends State<TagField> {
  final textEditingController = TextEditingController();

  @override
  void dispose() { 
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TagFormBloc, TagFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.tag.name.getOrCrash();
      },
      buildWhen: (p, c) => p.tag.name != c.tag.name,
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: 'Create',
            isDense: true,
            contentPadding: EdgeInsets.zero,
            counterText: '',
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          maxLength: TagName.maxLength,
          maxLengthEnforced: true,
          onChanged: (value) => context
            .read<TagFormBloc>()
            .add(TagFormEvent.nameChanged(value)),
          onFieldSubmitted: (_) async {
            context.read<TagFormBloc>().add(const TagFormEvent.saved());
            widget.onSubmit(state.tag);
          },
          validator: (_) => state.tag.name
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