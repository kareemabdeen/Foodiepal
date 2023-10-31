import 'package:flutter/material.dart';

import 'category_item_widget.dart';
import 'custom_appBar.dart';
import 'custom_carousel_slider.dart';
import 'custom_search_text_field.dart';
import 'list_view_with_title.dart';
import 'resturant_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: CustomAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomSearchTextField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItemWidget(),
                SizedBox(width: 10),
                CategoryItemWidget(),
                SizedBox(width: 10),
                CategoryItemWidget(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCarouselSlider(),
          ),
          ListViewWithTitle(
            listViewTitle: 'Best Offers',
            listViewWidget: ResturantListViewItem(),
          ),
          SizedBox(height: 15),
          ListViewWithTitle(
            listViewTitle: 'Popular Restaurants',
            listViewWidget: ResturantListViewItem(),
          ),
          SizedBox(height: 15),
          ListViewWithTitle(
            listViewTitle: 'Best To Dine-In',
            listViewWidget: ResturantListViewItem(),
          ),
        ],
      ),
    );
  }
}
