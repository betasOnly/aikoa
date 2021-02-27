import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/injection.dart';
import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'package:Dayly/app/core/icons.dart';

import 'tag_form/tag_form_bloc.dart';
import 'tag_field.dart';

class TagPickerTile extends StatelessWidget {
  final Tag initial;
  final ValueChanged<Tag> onSelected;
  const TagPickerTile({Key key, this.initial, this.onSelected})
      : super(key: key);

  bool get hasValue => initial != null;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TagsWatcherCubit>(
          create: (context) => getIt<TagsWatcherCubit>()..watchAll(),
        ),
        BlocProvider<TagFormBloc>(
          create: (context) => getIt<TagFormBloc>(),
        )
      ],
      child: ListTile(
        leading: Icon(
          DaylyIcons.tag,
          color: hasValue
            ? Theme.of(context).colorScheme.secondaryVariant
            : null,
        ),
        title: Focus(
          child: Builder(
            builder: (BuildContext context) {
              final FocusNode focusNode = Focus.of(context);
              final bool hasFocus = focusNode.hasFocus;

              if (hasFocus) {
                return BlocBuilder<TagsWatcherCubit, TagsWatcherState>(
                  builder: (context, state) => state.maybeMap(
                    loadSuccess: (state) => buildPicker(context, state.tags),
                    orElse: () => Container()
                  )
                );
              } else {
                return GestureDetector(
                  onTap: () => focusNode.requestFocus(),
                  child: hasValue
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Chip(
                          label: Text(initial.name.getOrCrash()),
                          labelStyle: ChipTheme.of(context).labelStyle.copyWith(
                            color: ChipTheme.of(context).checkmarkColor
                          ),
                          backgroundColor: ChipTheme.of(context).selectedColor,
                        ),
                      )
                    : Text('Select tag')
                );
              }
            }
          )
        ),
      ),
    );
  }

  Widget buildPicker(BuildContext context, List<Tag> tags) {
    return Wrap(
      spacing: 8,
      children: <Widget>[
        for (var tag in tags)
          ChoiceChip(
            label: Text(tag.name.getOrCrash()),
            selected: tag == initial,
            onSelected: (isSelected) {
              onSelected(tag);
              FocusScope.of(context).unfocus();
            },
            selectedColor: Theme.of(context).colorScheme.secondary
          ),
          ChoiceChip(
            selected: false,
            label: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 48),
              child: IntrinsicWidth(
                child: TagField(
                  onSubmit: (tag) {
                    onSelected(tag);
                    FocusScope.of(context).unfocus();
                  }
                )
              ),
            ),
            onSelected: (_) {

            },
          )
      ]
    );
  }
}