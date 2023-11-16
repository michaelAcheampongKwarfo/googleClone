import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/pages/search_screen.dart';
import 'package:google_clone/widgets/app_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'lib/images/google-logo.png',
            height: size.height * 0.12,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: size.width > 786 ? size.width * 0.4 : size.width * 0.9,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      SearchScreen(searchQuery: query, start: '0'),
                ),
              );
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.searchBorder),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.searchBorder,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('lib/images/mic-icon.svg',
                    width: 1, height: 1),
                // child: Image.asset('lib/images/icon.png', width: 1, height: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
