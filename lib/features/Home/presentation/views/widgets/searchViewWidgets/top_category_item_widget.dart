import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

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
          radius: 35,
          backgroundImage: AssetImage(Assets.imagesPizza),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(S.of(context).Pizza,
            style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
