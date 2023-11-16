import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            text: 'All',
            icon: Icons.search,
          ),
          SizedBox(
            width: 20.0,
          ),
          SearchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(
            width: 20.0,
          ),
          SearchTab(
            text: 'Map',
            icon: Icons.map,
          ),
          SizedBox(
            width: 20.0,
          ),
          SearchTab(
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(
            width: 20.0,
          ),
          SearchTab(
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(
            width: 20.0,
          ),
          SearchTab(
            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab(
      {super.key,
      required this.icon,
      this.isActive = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? AppColors.blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3.0,
            ),
            AppText(
              text: text,
              fontSize: 15.0,
              color: isActive ? AppColors.blueColor : Colors.grey,
            ),
          ],
        ),
        const SizedBox(
          height: 7.0,
        ),
        isActive
            ? Container(
                height: 3.0,
                width: 40,
                color: AppColors.blueColor,
              )
            : Container(),
      ],
    );
  }
}
