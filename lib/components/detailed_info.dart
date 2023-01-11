import 'package:flutter/material.dart';

class DetailedInfo extends StatelessWidget {
  const DetailedInfo(
      {Key? key,
      required this.textName,
      this.textNameStyle,
      required this.text,
      this.textStyle})
      : super(key: key);

  final String textName;
  final TextStyle? textNameStyle;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: textName,
            style: textNameStyle ??
                const TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
            children: <TextSpan>[
          TextSpan(
              text: text,
              style: textStyle ??
                  const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w800))
        ]));
  }
}
