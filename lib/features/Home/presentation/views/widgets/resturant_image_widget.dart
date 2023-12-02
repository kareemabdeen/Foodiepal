import 'package:flutter/material.dart';
import 'package:food_app/core/utils/assets.dart';

import '../../../../../core/utils/helper.dart';
import 'fav_cirular_button_widget.dart';

class ResturantImageWidget extends StatelessWidget {
  const ResturantImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = context.screenWidth * 0.35;
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 8),
      height: containerWidth * 1.1,
      width: context.screenWidth * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.imagesFoodDemo,
          ),
        ),
      ),
      child: const Align(
        alignment: Alignment.topRight,
        child: FavCircularButton(),
      ),
    );
  }
}
