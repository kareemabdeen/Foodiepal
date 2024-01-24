import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/features/Restaurant_page/Presentation/views/widgets/restaurant_offer_card_widget.dart';

class RestaurantViewBody extends StatelessWidget {
  const RestaurantViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHight * .3),
        const RestaurantOffersCardItem(),
      ],
    );
  }
}
