import 'package:flutter/material.dart';

class NormalTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const NormalTextWidget({
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight),
    );
  }
}
