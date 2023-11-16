// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const Home(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth <= 768) {
        return mobileScreenLayout;
      }
      return webScreenLayout;
    });
  }
}
