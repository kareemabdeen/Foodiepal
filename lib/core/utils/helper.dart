import 'package:flutter/material.dart';

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
