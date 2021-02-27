import 'package:flutter/material.dart';

Future<bool> showDeleteDialog({BuildContext context, String title,
  String content}) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            FlatButton(
              child: Text('Accept'),
              onPressed: () => Navigator.of(context).pop(true)
            )
          ],
        );
      },
    );
  }