import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RestaurantRatingDetails extends StatelessWidget {
  const RestaurantRatingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 14,
        ),
        Gap(5),
        Text('4.4'),
        Gap(5),
        Text(
          '(6,757 Ratings)',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
