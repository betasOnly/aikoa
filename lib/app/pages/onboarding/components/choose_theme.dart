import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import 'package:Dayly/app/core/widgets/switch.dart';

class ChooseThemePage extends StatelessWidget {
  const ChooseThemePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Which side are you?',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 32,),
        LiteRollingSwitch(
          value: ThemeProvider.themeOf(context).data
            .brightness == Brightness.dark,
          textOn: 'dark',
          textOff: 'light',
          colorOn: Colors.grey[800].withOpacity(0.87),
          colorOff: Colors.grey[800].withOpacity(0.37),
          iconOn: Icons.brightness_2,
          iconOff: Icons.wb_sunny,
          onChanged: (bool isDark) {
            ThemeProvider.controllerOf(context).setTheme(
              isDark ? 'dark' : 'light');
          }
        ),
      ]
    );
  }
}