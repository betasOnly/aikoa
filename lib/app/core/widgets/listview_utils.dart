import 'package:flutter/material.dart';

class ListViewSeperator extends StatelessWidget {
  const ListViewSeperator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).colorScheme.secondaryVariant.withOpacity(0.37)
    );
  }
}