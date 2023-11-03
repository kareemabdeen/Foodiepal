import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/features/Home/presentation/views/Styles/ItemsTextStyles.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_details_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: CustomAppBar(
              title: 'Deliver Now',
              titleStyle: StylesManager.textStyle16
                  .copyWith(color: Colors.black.withOpacity(0.5)),
              subTitle: 'Hi guest',
              subTitleStyle: StylesManager.textStyle30,
              icon: Icons.person_outline,
              iconFunction: () => context.pushWithReplacmentNamed(
                AppRouter.kMenuPage,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomSearchTextField(),
          ),
          const Padding(
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCarouselSlider(),
          ),
          const ListViewWithTitle(
            listViewTitle: 'Best Offers',
            listViewWidget: ResturantListViewItem(),
          ),
          const SizedBox(height: 15),
          const ListViewWithTitle(
            listViewTitle: 'Popular Restaurants',
            listViewWidget: ResturantListViewItem(),
          ),
          const SizedBox(height: 15),
          const ListViewWithTitle(
            listViewTitle: 'Best To Dine-In',
            listViewWidget: ResturantListViewItem(),
          ),
        ],
      ),
    );
  }
}
