import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: AppColors.footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: size.width <= 768 ? 10 : 150, vertical: 15.0),
          child: Row(
            children: [
              AppText(
                text: 'Ghana',
                color: Colors.grey.shade700,
                fontSize: 15.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 15.0,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xFF70757A),
                size: 12.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              const AppText(
                text: '100016, Accra, Ghana',
                fontSize: 14.0,
                color: AppColors.primaryColor,
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 0,
          color: Colors.black26,
        ),
        Container(
          color: AppColors.footerColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Row(
            children: [
              AppText(
                text: 'Help',
                color: Colors.grey.shade700,
                fontSize: 15.0,
              ),
              const SizedBox(
                width: 15,
              ),
              AppText(
                text: 'Send Feedback',
                color: Colors.grey.shade700,
                fontSize: 15.0,
              ),
              const SizedBox(
                width: 15,
              ),
              AppText(
                text: 'Privacy',
                color: Colors.grey.shade700,
                fontSize: 15.0,
              ),
              const SizedBox(
                width: 15,
              ),
              AppText(
                text: 'Terms',
                color: Colors.grey.shade700,
                fontSize: 15.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
