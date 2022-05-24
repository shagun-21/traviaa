import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  int size;
  final String text;
  final Color color;
  AppLargeText(
      {Key? key, required this.size, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
