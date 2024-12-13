import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/logIn_screen.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/sign_up_screen.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/start_screen.dart';
import 'package:health_tracker/App/Features/OnBoarding/Screens/on_boarding_screen.dart';
import 'package:health_tracker/App/Features/Home/screens/home_screen.dart';
import 'package:health_tracker/App/Utils/Theme/Theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Health Tracker',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme : MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const ONBoardingScreen(),
    );
  }
}
