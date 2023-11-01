import 'package:flutter/material.dart';

import '../../../../core/utils/helper.dart';

class CustomSwipeContainer extends StatelessWidget {
  const CustomSwipeContainer({
    super.key,
    this.color = const Color(0xffD9D9D9),
    required this.height,
  });

  final Color? color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: context.screenWidth * 0.23,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
