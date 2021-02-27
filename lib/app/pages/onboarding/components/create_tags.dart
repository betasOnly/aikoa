import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'package:Dayly/app/pages/tags/tags_editor.dart';
import 'package:Dayly/injection.dart';

class CreateTagsPage extends StatelessWidget {
  const CreateTagsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Create tags for your tasks.',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 32,),
        BlocProvider<TagsWatcherCubit>(
          create: (context) => getIt<TagsWatcherCubit>()..watchAll(),
          child: TagsEditor()
        ),
      ]
    );
  }
}