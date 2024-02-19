import 'package:flutter/material.dart';
import 'package:food_app/core/global/themes/light_theme.dart';

extension MediaQueryHelper on BuildContext {
  double get screenHight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
} // to access it context.screenHeight * n

// context.simplePush(HomePage());
extension NavigatorHelper on BuildContext {
  void simplePush(Widget widget) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void simplePop() {
    Navigator.of(this).pop();
  }

  void simplePushReplacement(Widget widget) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void simplePushAndRemoveUntil(Widget widget) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );
  }

  void pushWithReplacmentNamed(String widgetName) {
    Navigator.pushReplacementNamed(this, widgetName);
  }
}

// Navigator.pushReplacementNamed(context, kHomeView);

extension PaddingList on List<Widget> {
  List<Widget> paddingdirectional(
      {double? top, double? bottom, double? start, double? end}) {
    return map(
      (e) => Padding(
        padding: EdgeInsetsDirectional.only(
          top: top ?? 0,
          start: start ?? 0,
          end: end ?? 0,
          bottom: bottom ?? 0,
        ),
        child: e,
      ),
    ).toList();
  }
}

TextTheme buildAppTextTheme({Color? color = Colors.black}) {
  return TextTheme(
    ///HeadlineLarge
    headlineLarge: TextStyle(
        fontSize: AppFontSizes.headlineLarge,
        fontWeight: FontWeight.w700,
        color: color),

    ///HeadlineSmall
    headlineSmall: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: AppFontSizes.headlineSmall,
        color: Colors.grey,
        fontWeight: FontWeight.w400),

    ///HeadlineMedium
    headlineMedium: TextStyle(
        fontSize: AppFontSizes.headlineMedium,
        fontWeight: FontWeight.w600,
        color: color),

    ///HeadlineSmallBlack
    titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: AppFontSizes.headlineSmall,
        color: color,
        fontWeight: FontWeight.w400),
  );
}
