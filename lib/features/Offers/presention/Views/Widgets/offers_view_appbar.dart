import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_router.dart';
import 'package:food_app/core/utils/helper.dart';

class OfferdViewAppBar extends StatelessWidget {
  const OfferdViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          return context.pushWithReplacmentNamed(
            AppRouter.kHomeView,
          );
        },
        child: const Align(
          alignment: Alignment.topLeft,
          child: Icon(
            Icons.arrow_back,
            size: 26,
          ),
        ));
  }
}
