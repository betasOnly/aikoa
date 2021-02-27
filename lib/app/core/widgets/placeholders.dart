import 'package:flutter/material.dart';

class PlaceholderText extends StatelessWidget {
  final String text;
  const PlaceholderText(this.text);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: TextField(
        decoration: InputDecoration(
          hintText: text
        )
      ),
    );
  }
}