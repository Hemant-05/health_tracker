import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyAppBarTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyBottomSheetTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyCheckBoxTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyChipTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyElevatedButtonTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyOutlinedButtonTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyTextFormFieldTheme.dart';
import 'package:health_tracker/App/Utils/Theme/CustomTheme/MyTextTheme.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lufga',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckboxTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lufga',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    checkboxTheme: MyCheckBoxTheme.darkCheckboxTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
