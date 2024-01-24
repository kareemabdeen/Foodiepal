import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/assets.dart';
import 'delivery_details_widget.dart';
import 'restaurant_rating%20details._widget.dart';

//Todo:change its name later
class RestaurantProfileInfoCard extends StatelessWidget {
  const RestaurantProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              color: Colors.grey.shade300,
              spreadRadius: 0,
              blurStyle: BlurStyle.normal,
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            //Todo: refactor this part
            ListTile(
              leading: Image.asset(
                Assets.imagesStarbucksLogo,
                height: 90,
                width: 70,
              ),
              title: const Text(
                'StarBucks',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fried chicken , Sandwich, Fast ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(10),
                  RestaurantRatingDetails(),
                ],
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 100),
                child: Icon(
                  Icons.error_outline,
                  color: Colors.grey,
                ),
              ),
            ),
            const Gap(15),
            const RestaurantDeliveryDetails(),
          ],
        ),
      ),
    );
  }
}
