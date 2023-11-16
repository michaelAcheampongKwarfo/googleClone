import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_text.dart';

class FooterText extends StatelessWidget {
  final String title;
  const FooterText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: AppText(
        text: title,
        color: const Color(0xff70757a),
      ),
    );
  }
}
