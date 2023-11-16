import 'package:flutter/material.dart';
import 'package:google_clone/pages/home.dart';
import 'package:google_clone/pages/mobile_screenlayout.dart';
import 'package:google_clone/pages/web_screnlayout.dart';
import 'package:google_clone/widgets/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const Home(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
