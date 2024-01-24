import 'package:flutter/material.dart';
import 'package:food_app/core/utils/styles.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Market",
          style: StylesManager.textStyle20,
        ),
        Text(
          "KFC(6th of October - Lake Front)",
          style: StylesManager.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
