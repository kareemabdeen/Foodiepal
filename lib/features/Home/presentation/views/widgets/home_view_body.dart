import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../core/utils/helper.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../menu/prsentation/views/menu_view.dart';
import '../search_view.dart';
import 'category_item_widget.dart';
import 'custom_appbar.dart';
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
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: CustomAppBar(
              title: S.of(context).DeliverNow,
              titleStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.w400),
              subTitle: S.of(context).HiGuest,
              subTitleStyle: Theme.of(context).textTheme.headlineLarge!,
              icon: Icons.person_outline,
              iconFunction: () => context.simplePush(
                const MenuView(), // Todo:  recheck name on these page => meeting
              ),
            ),
          ),
          SizedBox(
            height: 56,
            width: context.screenWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: InkWell(
                onTap: () => context.simplePush(const SearchView()),
                //Todo: change it later to appRouter.Widgetname to use onGenerateRoute
                child: const CustomSearchTextField(
                  borderRadius: 26,
                  enabled: false,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItem(),
                SizedBox(width: 10),
                CategoryItem(),
                SizedBox(width: 10),
                CategoryItem(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCarouselSlider(),
          ),
          ListViewWithTitle(
            listViewHeight: context.screenHight * 0.29,
            listViewTitle: S.of(context).BestOffers,
            scrollDirection: Axis.horizontal,
            listViewWidget: const ResturantListViewItem(),
            physics: const BouncingScrollPhysics(),
          ),
          const SizedBox(height: 15),
          ListViewWithTitle(
            listViewHeight: context.screenHight * 0.29,
            scrollDirection: Axis.horizontal,
            listViewTitle: S.of(context).PopularRestaurants,
            listViewWidget: const ResturantListViewItem(),
            physics: const BouncingScrollPhysics(),
          ),
          const SizedBox(height: 15),
          ListViewWithTitle(
            listViewHeight: context.screenHight * 0.29,
            scrollDirection: Axis.horizontal,
            listViewTitle: S.of(context).BestToDineIn,
            listViewWidget: const ResturantListViewItem(),
            physics: const BouncingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
