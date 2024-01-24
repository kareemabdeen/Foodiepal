import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RestaurantDeliveryDetails extends StatelessWidget {
  const RestaurantDeliveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const DeliveryDeepDetails(
          text1: 'Delivery Fee',
          text2: 'EGY 25.00',
        ),
        Container(
          color: Colors.grey.shade200,
          child: const VerticalDivider(
            thickness: 3,
            indent: 20,
            endIndent: 15,
            width: 1,
          ),
        ),
        const DeliveryDeepDetails(
          text1: 'Delivery Time',
          text2: '60 mins',
        ),
        Container(
          //!FixME: this divider cannot appear without wrapping with container
          color: Colors.grey.shade200,
          child: const VerticalDivider(
            thickness: 3,
            indent: 20,
            endIndent: 15,
            width: 1,
          ),
        ),
        const DeliveryDeepDetails(
          text1: 'Delivered by',
          text2: 'Restaurant',
        ),
      ],
    );
  }
}

class DeliveryDeepDetails extends StatelessWidget {
  const DeliveryDeepDetails({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(10),
        Row(
          children: [
            Text(
              text2,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
