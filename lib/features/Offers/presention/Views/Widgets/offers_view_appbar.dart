import 'package:flutter/material.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';

class OffersViewAppBar extends StatelessWidget {
  const OffersViewAppBar({super.key});

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
          size: 30,
        ),
      ),
    );
  }
}
