import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';

class TranslationButton extends StatelessWidget {
  const TranslationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        AppText(text: 'Google Offered in : '),
        LanguageText(title: 'Hausa'),
        SizedBox(
          width: 5.0,
        ),
        LanguageText(title: 'Akan'),
        SizedBox(
          width: 5.0,
        ),
        LanguageText(title: 'Ewe'),
        SizedBox(
          width: 5.0,
        ),
        LanguageText(title: 'Ga'),
      ],
    );
  }
}

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: AppText(
        text: title,
        color: AppColors.blueColor,
      ),
    );
  }
}
