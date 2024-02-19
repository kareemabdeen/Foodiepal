import 'package:flutter/material.dart';
import 'package:food_app/core/global/themes/colors/colors_light.dart';
import 'package:food_app/core/utils/helper.dart';

ThemeData getThemeLight() => ThemeData(
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(AppColorsLight.primaryColor))),
    scaffoldBackgroundColor: AppColorsLight.scaffoldBackgroundColor,
    primaryColor: AppColorsLight.primaryColor,
    navigationBarTheme: const NavigationBarThemeData(
        labelTextStyle: MaterialStatePropertyAll(
            TextStyle(color: AppColorsLight.primaryColor)),
        iconTheme: MaterialStatePropertyAll(
            IconThemeData(color: AppColorsLight.primaryColor)),
        surfaceTintColor: AppColorsLight.primaryColor,
        backgroundColor: AppColorsLight.scaffoldBackgroundColor,
        indicatorColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      foregroundColor: AppColorsLight.scaffoldBackgroundColor,
      minimumSize: const Size(double.infinity, 50),
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    )),
    textTheme: buildAppTextTheme(color: AppColorsLight.primaryColor));

class AppFontSizes {
  static const headlineLarge = 30.0;
  static const headlineSmall = 14.00;
  static const headlineMedium = 20.00;
}
