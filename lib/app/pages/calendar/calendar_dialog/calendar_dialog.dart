import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/calendar/calendar_manager/calendar_manager_cubit.dart';
import 'package:Dayly/domain/calendar/calendar.dart';

class CalendarDialog extends StatelessWidget {
  const CalendarDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<CalendarManagerCubit>().listCalendars();
    return AlertDialog(
      title: Text("Choose Calendar"),
      content: SizedBox(
        width: 280,
        child: BlocBuilder<CalendarManagerCubit, CalendarManagerState>(
          builder: (context, state) => state.calendars.fold(
            () => Container(height: 48),
            (calendars) => ListView.builder(
              shrinkWrap: true,
              itemCount: calendars.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(calendars[index].name),
                  leading: Radio<Calendar>(
                    activeColor: Theme.of(context).colorScheme.secondary,
                    value: calendars[index],
                    groupValue: state.connected.getOrElse(() => null),
                    onChanged: (Calendar calendar) async {
                      await context
                        .read<CalendarManagerCubit>()
                        .setCalendar(calendar);
                      Navigator.of(context).pop();
                    },
                  ),
                );
              },
            )
          )
        )
      ),
    );
  }
}