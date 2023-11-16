import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WebButton(title: 'Google Search'),
            SizedBox(
              width: 10.0,
            ),
            WebButton(title: 'I`m feeling lucky'),
          ],
        )
      ],
    );
  }
}

class WebButton extends StatelessWidget {
  final String title;
  const WebButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      color: AppColors.searchColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 18.0,
      ),
      child: AppText(
        text: title,
        fontSize: 15.0,
      ),
    );
  }
}
