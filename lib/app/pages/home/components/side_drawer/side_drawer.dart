import 'package:flutter/material.dart';

import 'widgets/calendar_tile.dart';
import 'widgets/tags_tile.dart';
import 'widgets/theme_tile.dart';
import 'widgets/version_tile.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            ThemeTile(),
            CalendarTile(),
            TagsTile(),
            Spacer(),
            VersionTile()
          ],
        ),
      ),
    );
  }
}
