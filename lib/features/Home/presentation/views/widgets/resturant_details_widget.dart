import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

import '../Styles/ItemsTextStyles.dart';
import 'resturant_rating_distance_widget.dart';

class RestaurantDetailsWidget extends StatelessWidget {
  const RestaurantDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).salad,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 18),
          overflow: TextOverflow.ellipsis,
        ),
        Text(S.of(context).dishDescription,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall!),
        const ResturantRatingAndDistanceWidget()
      ],
    );
  }
}
