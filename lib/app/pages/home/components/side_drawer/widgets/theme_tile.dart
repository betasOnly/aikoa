import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:theme_provider/theme_provider.dart';

import 'package:Dayly/app/core/icons.dart';

class ThemeTile extends StatelessWidget {
  const ThemeTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(DaylyIcons.themeMode),
        Expanded(
          child: SwitchListTile(
              activeColor: Theme.of(context).colorScheme.secondary,
              value: ThemeProvider.themeOf(context).data.brightness ==
                  Brightness.dark,
              title: Text(
                AppLocalizations.of(context).themeMode
              ),
              onChanged: (bool isDark) {
                ThemeProvider.controllerOf(context)
                    .setTheme(isDark ? 'dark' : 'light');
              }),
        ),
      ],
    );
  }
}