import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/icons.dart';

class TagsTile extends StatelessWidget {
  const TagsTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(DaylyIcons.tag),
        Expanded(
          child: ListTile(
            title: Text('Tags'),
            onTap: () {
              ExtendedNavigator.of(context).push(Routes.tagsPage);
            }
          ),
        ),
      ],
    );
  }
}