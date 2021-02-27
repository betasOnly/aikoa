import 'package:Dayly/app/core/icons.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DaylyIcon(),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Text(
          'AIKOA.',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 32,),
        Expanded(
          child: Column(
            children: [
              Text(
                'Organize your day.\nReach your goals.',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}