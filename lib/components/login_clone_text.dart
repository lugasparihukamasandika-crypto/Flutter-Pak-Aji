import 'package:flutter/material.dart';

class LoginCloneText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  const LoginCloneText({super.key, required this.text, required this.fontWeight, required this.fontStyle, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      )
    );
  }
}
