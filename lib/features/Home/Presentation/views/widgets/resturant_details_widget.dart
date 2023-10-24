import 'package:flutter/material.dart';
import 'package:food_app/features/Home/Presentation/views/Styles/ItemsTextStyles.dart';
import 'package:food_app/features/Home/Presentation/views/widgets/resturant_rating_distance_widget.dart';

class ResturantDetailsWidget extends StatelessWidget {
  const ResturantDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Momoz', style: ItemsTextStyles.textStyle18),
          Text('Chinese | Thai | Seaf..',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ItemsTextStyles.textStyle13),
          ResturantRatingAndDistanceWidget()
        ],
      ),
    );
  }
}
