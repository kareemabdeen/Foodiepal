import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/helper.dart';
import '../../../../Home/Presentation/views/widgets/fav_cirular_button_widget.dart';

class OffersImageWidget extends StatelessWidget {
  const OffersImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: context.screenWidth * 0.45,
      width: context.screenWidth,
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
