import 'package:flutter/material.dart';

void openDatePicker({BuildContext context, DateTime initialDate,
  DateTime firstDate, ValueChanged<DateTime> onSave}) {

  showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate?? DateTime.now(),
    lastDate: DateTime.now().add(Duration(days: 365 * 10)),
    builder: (context, child) => Theme(
      data: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          onPrimary: Theme.of(context).colorScheme.onSecondary,
          primary: Theme.of(context).colorScheme.secondary,
          primaryVariant: Theme.of(context).colorScheme.secondaryVariant,
          brightness: Brightness.dark,
        )
      ),
      child: child
    ),
  ).then((value) {
    if (value != null) {
      onSave(value);
    }
  });
}

void openTimePicker({BuildContext context, TimeOfDay initialTime,
  ValueChanged<TimeOfDay> onSave}) {

  showTimePicker(
    context: context,
    initialTime: initialTime,
    builder: (context, child) => Theme(
      data: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          onPrimary: Theme.of(context).colorScheme.onSecondary,
          primary: Theme.of(context).colorScheme.secondaryVariant,
          brightness: Brightness.light,
          onBackground: Theme.of(context).colorScheme.surface,
          surface: Theme.of(context).colorScheme.surface,
          onSurface: Theme.of(context).colorScheme.onSurface,
        )
      ),
      child: child
    ),
  ).then((value) {
    if (value != null) {
      onSave(value);
    }
  });
}