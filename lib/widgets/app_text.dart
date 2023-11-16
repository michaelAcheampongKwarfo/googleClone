import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const AppText(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? AppColors.whiteColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}
