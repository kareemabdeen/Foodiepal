import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_details_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'category_item_widget.dart';
import 'custom_appBar.dart';
import 'custom_carousel_slider.dart';
import 'custom_search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomSearchTextField(),
          ),
          Row(
            children: [
              CategoryItemWidget(),
              CategoryItemWidget(),
              CategoryItemWidget(),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCarouselSlider(),
          ),
        ],
      ),
    );
  }
}
