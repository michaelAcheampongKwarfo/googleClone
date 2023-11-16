import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/pages/search_screen.dart';
import 'package:google_clone/widgets/app_colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 15, top: 4),
            child: Image.asset(
              'lib/images/google-logo.png',
              height: 30,
              width: 92,
            ),
          ),
          const SizedBox(
            width: 27.0,
          ),
          Container(
            width: size.width * 0.45,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.searchColor,
              borderRadius: BorderRadius.circular(22.0),
              border: Border.all(color: AppColors.searchColor),
            ),
            child: TextFormField(
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SearchScreen(searchQuery: query, start: '0'),
                  ),
                );
              },
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'lib/images/mic-icon.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.search,
                          color: AppColors.blueColor,
                        ),
                      ],
                    ),
                  ),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
