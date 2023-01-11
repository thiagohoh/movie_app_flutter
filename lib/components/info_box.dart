import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({Key? key, required this.text, this.fontSize = 12}) : super(key: key);

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: text,
            style:  TextStyle(
      color: Colors.black87,
      fontSize: fontSize,
    )));
  }
}
