import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';

import 'tags_editor.dart';

class TagsPage extends StatelessWidget implements AutoRouteWrapper {
  const TagsPage({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) =>  MultiBlocProvider(
    providers: [
      BlocProvider<TagsWatcherCubit>(
        create: (context) => getIt<TagsWatcherCubit>()..watchAll(),
      ),
    ],
    child: this
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit tags'),
      ),
      body: SafeArea(
        child: Container(
          // alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16.0),
          child: TagsEditor()
        ),
      ),
    );
  }
}