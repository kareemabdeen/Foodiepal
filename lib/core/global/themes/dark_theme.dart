import 'package:flutter/material.dart';
import 'package:food_app/core/global/themes/colors/colors_dark.dart';
import 'package:food_app/core/utils/helper.dart';

ThemeData getThemeDark() => ThemeData(
      appBarTheme:
          AppBarTheme(backgroundColor: AppColorsDark.scaffoldBackgroundColor),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(AppColorsDark.primaryColor))),
      scaffoldBackgroundColor: AppColorsDark.scaffoldBackgroundColor,
      primaryColor: AppColorsDark.primaryColor,
      navigationBarTheme: const NavigationBarThemeData(
          labelTextStyle: MaterialStatePropertyAll(
              TextStyle(color: AppColorsDark.primaryColor)),
          iconTheme: MaterialStatePropertyAll(
              IconThemeData(color: AppColorsDark.primaryColor)),
          surfaceTintColor: AppColorsDark.primaryColor,
          backgroundColor: AppColorsDark.scaffoldBackgroundColor,
          indicatorColor: Colors.transparent),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        foregroundColor: AppColorsDark.scaffoldBackgroundColor,
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppColorsDark.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      )),
      textTheme: buildAppTextTheme(color: AppColorsDark.primaryColor),
    );
