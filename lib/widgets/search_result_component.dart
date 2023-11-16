import 'package:flutter/material.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;
  const SearchResultComponent({
    super.key,
    required this.link,
    required this.text,
    required this.linkToGo,
    required this.description,
  });

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderLine = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(widget.linkToGo))) {
                await launchUrl(Uri.parse(
                  widget.linkToGo,
                ));
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderLine = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.link,
                  fontSize: 14,
                  color: const Color(0xFF202124),
                ),
                // AppText(
                //   text: widget.text,
                //   color: _showUnderLine ? TextDecoration.underline : TextDecoration.none;,
                // ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.blueColor,
                    decoration: _showUnderLine
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
        ),
        AppText(
          text: widget.description,
          fontSize: 14,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
