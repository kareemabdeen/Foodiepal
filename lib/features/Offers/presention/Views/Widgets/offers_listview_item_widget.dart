import 'package:flutter/material.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_details_widget.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_image_widget.dart';

class OfferListViewItem extends StatelessWidget {
  const OfferListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OffersImageWidget(),
        OfferDetailsWidget(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
