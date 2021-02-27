import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';

class HabitsCard extends StatelessWidget {
  const HabitsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: () {
        
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(DaylyIcons.habits),
              SizedBox(width: 8,),
              Text(
                AppLocalizations.of(context).habitsPageTitle,
                style: Theme.of(context).textTheme.subtitle2
                  .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: Opacity(
              opacity: 0.6,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppLocalizations.of(context).comingSoon,
                  style: Theme.of(context).textTheme.caption
                ),
              ),
            )
          ),
        ]
      )
    );
  }
}