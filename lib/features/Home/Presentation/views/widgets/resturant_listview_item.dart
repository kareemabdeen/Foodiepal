import 'package:flutter/material.dart';
import 'package:food_app/features/Home/Presentation/views/widgets/resturant_details_widget.dart';
import 'package:food_app/features/Home/Presentation/views/widgets/resturant_image_widget.dart';

class ResturantListViewItem extends StatelessWidget {
  const ResturantListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ResturantImageWidget(),
        ResturantDetailsWidget(),
      ],
    );
  }
}
