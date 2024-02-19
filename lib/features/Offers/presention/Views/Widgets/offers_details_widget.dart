import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../Home/presentation/views/Styles/ItemsTextStyles.dart';
import '../../../../Home/presentation/views/widgets/resturant_rating_distance_widget.dart';

class OfferDetailsWidget extends StatelessWidget {
  const OfferDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).salad,
                  style: Theme.of(context).textTheme.headlineMedium!),
              Text(S.of(context).dishDescription,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall!)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "19.5\$",
                style: Theme.of(context).textTheme.headlineMedium!,
              ),
              const ResturantRatingAndDistanceWidget(),
            ],
          )
        ],
      ),
    );
  }
}
