import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';

import 'resturant_details_widget.dart';
import 'resturant_image_widget.dart';

class ResturantListViewItem extends StatelessWidget {
  const ResturantListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResturantImageWidget(),
        ResturantDetailsWidget(),
      ],
    );
  }
}
