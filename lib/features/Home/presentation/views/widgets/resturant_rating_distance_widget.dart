import 'package:flutter/material.dart';

import '../Styles/ItemsTextStyles.dart';

class ResturantRatingAndDistanceWidget extends StatelessWidget {
  const ResturantRatingAndDistanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.orange,
          size: 14,
        ),
        Text('4.2 | 1Km | 28 Mins',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall!),
      ],
    );
  }
}
