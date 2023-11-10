import 'package:flutter/material.dart';

import 'offers_details_widget.dart';
import 'offers_image_widget.dart';

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
