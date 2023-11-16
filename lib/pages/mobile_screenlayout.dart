import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';
import 'package:google_clone/widgets/mobile_footer.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: AppColors.blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.blueColor,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Images',
                )
              ],
            ),
          ),
        ),
        actions: [
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
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TranslationButton(),
                    ],
                  ),
                  MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
