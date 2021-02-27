import 'package:Dayly/app/core/bloc/calendar/calendar_manager/calendar_manager_cubit.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectCalendarPage extends StatelessWidget {
  const ConnectCalendarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Connect to your calendar.',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 32,),
        BlocBuilder<CalendarManagerCubit, CalendarManagerState>(
          builder: (context, state) => state.calendars.fold(
            () => Column(
              children: [
                Text(
                  'No calendars were found. Please check your settings to grant the app access to your calendar.',
                ),
                SizedBox(height: 16,),
                RaisedButton(
                  child: Text('Check again'),
                  onPressed: () async {
                    await context
                        .read<CalendarManagerCubit>()
                        .listCalendars();
                  },
                )
              ],
            ),
            (calendars) => ListView.builder(
              shrinkWrap: true,
              itemCount: calendars.length,
              padding: const EdgeInsets.only(left: 16),
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
                    },
                  ),
                );
              },
            )
          )
        )
      ],
    );
  }
}