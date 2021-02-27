import 'package:flutter/material.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/pages/calendar/calendar_dialog/calendar_dialog.dart';


class CalendarTile extends StatelessWidget {
  CalendarTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(DaylyIcons.events),
        Expanded(
          child: ListTile(
            title: Text('Calendar'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CalendarDialog()
              );
            }
          ),
        ),
      ],
    );
  }
}