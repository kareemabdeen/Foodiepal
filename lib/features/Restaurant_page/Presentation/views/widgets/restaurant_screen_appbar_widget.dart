import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/helper.dart';
import '../../../../../core/widgets/background_icon.dart';

class RestaurantViewAppBar extends StatelessWidget {
  const RestaurantViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 2,
        ),
        child: CustomIconWithBackground(
          color: Colors.white,
          icon: Icons.arrow_back,
          iconSize: 24,
          iconFunction: () => Navigator.pop(context),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          Assets.imagesStarbucksCover,
          fit: BoxFit.cover,
        ),
      ),
      expandedHeight: context.screenHight * .25,
      actions: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomIconWithBackground(
            color: Colors.white,
            icon: Icons.favorite_border,
            iconSize: 24,
          ),
        ),
        CustomIconWithBackground(
          color: Colors.white,
          icon: Icons.adaptive.share,
          iconSize: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomIconWithBackground(
            color: Colors.white,
            icon: Icons.adaptive.share,
            iconSize: 24,
          ),
        ),
      ],
    );
  }
}
