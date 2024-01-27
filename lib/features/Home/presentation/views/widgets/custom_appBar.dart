import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/background_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final IconData icon;
  final double iconSize;
  final Function() iconFunction;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.subTitle,
    required this.subTitleStyle,
    required this.icon,
    this.iconSize = 25,
    required this.iconFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleStyle,
            ),
            Text(
              subTitle,
              style: subTitleStyle,
            ),
          ],
        ),
        CustomIconWithBackground(
          iconSize: iconSize,
          icon: icon,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
