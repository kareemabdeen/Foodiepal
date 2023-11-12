import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../Styles/ItemsTextStyles.dart';

class TopCategoryItem extends StatelessWidget {
  const TopCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 16,
        ),
        const CircleAvatar(
          backgroundColor: Color(0xffF8F8F8),
          radius: 35,
          backgroundImage: AssetImage(Assets.imagesPizza),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Pizza',
          style: ItemsTextStyles.headerText24.copyWith(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
