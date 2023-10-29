import 'package:flutter/material.dart';
import 'package:food_app/features/Home/presentation/views/Styles/ItemsTextStyles.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_rating_distance_widget.dart';

class OfferDetailsWidget extends StatelessWidget {
  const OfferDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Momoz', style: ItemsTextStyles.textStyle18),
              Text('Chinese | Thai | Seafood',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: ItemsTextStyles.textStyle14)
            ],
          ),
          Column(
            children: [
              Text(
                "19.5\$",
                style: ItemsTextStyles.textStyle18,
              ),
              ResturantRatingAndDistanceWidget(),
            ],
          )
        ],
      ),
    );
  }
}
