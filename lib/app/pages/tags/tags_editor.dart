import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'package:Dayly/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tag_picker/tag_field.dart';
import 'tag_picker/tag_form/tag_form_bloc.dart';

class TagsEditor extends StatelessWidget {
  const TagsEditor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagsWatcherCubit, TagsWatcherState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => Container(),
        loadSuccess: (state) {
          return Wrap(
            spacing: 8,
            children: <Widget>[
              for (var tag in state.tags)
                BlocProvider(
                  create: (context) => getIt<TagFormBloc>()
                    ..add(TagFormEvent.initialized(some(tag))),
                  child: Builder(
                    builder: (context) {
                      return Chip(
                        label: Text(tag.name.getOrCrash()),
                        onDeleted: () {
                          context
                            .read<TagFormBloc>()
                            .add(const TagFormEvent.deleted());
                        },
                      );
                    }
                  ),
                ),
                BlocProvider(
                  create: (context) => getIt<TagFormBloc>(),
                  child: ChoiceChip(
                    selected: false,
                    label: IntrinsicWidth(
                      child: TagField(
                        autofocus: true,
                        onSubmit: (tag) {
                        }
                      )
                    ),
                  ),
                )
            ]
          );
        }
      )
    );
  }
}