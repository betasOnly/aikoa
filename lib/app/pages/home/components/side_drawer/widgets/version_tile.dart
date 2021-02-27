import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VersionTile extends StatelessWidget {
  const VersionTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("Reset Daily?"),
              content: Text("All your local files will be deleted."),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                FlatButton(
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  child: Text("Accept"),
                  onPressed: () async {
                    SharedPreferences.getInstance()
                        .then((prefs) => prefs.clear());
                    Directory dir = await getApplicationDocumentsDirectory();
                    Directory localDir = Directory(dir.path);
                    if (await localDir.exists()) {
                      localDir.deleteSync(recursive: true);
                    }
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      title: Text(
        'App Version 0.5.0',
        textAlign: TextAlign.center,
      )
    );
  }
}