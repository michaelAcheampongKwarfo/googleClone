import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'About'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Advertising'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Business'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'How Search Works'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'Privacy'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Terms'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Settings'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
