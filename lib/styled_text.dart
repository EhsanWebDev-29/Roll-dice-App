
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text, required this.textColor,required this.fontSize,required this.fontWeight});

  final String text;
  final Color textColor;
  final double fontSize;
  final int fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight(fontWeight),
      ),
    );
  }
}
