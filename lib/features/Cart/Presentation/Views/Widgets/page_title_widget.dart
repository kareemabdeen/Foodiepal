import 'package:flutter/material.dart';
import 'package:food_app/core/utils/styles.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Basket",
          style: Theme.of(context).textTheme.headlineMedium!,
        ),
        Text(
          "KFC(6th of October - Lake Front)",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
