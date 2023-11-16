// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/search_button.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const AppText(
              text: 'Gmail',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const AppText(
              text: 'Images',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.apps,
                color: AppColors.whiteColor,
              )),
          const SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
              right: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const AppText(text: 'Sign In'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.24,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SearchButton(),
                      SizedBox(
                        height: 20.0,
                      ),
                      TranslationButton(),
                    ],
                  ),
                  const WebFooter()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
