import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../../core/utils/helper.dart';
import '../../../../../Offers/presention/Views/Widgets/offers_view_appbar.dart';
import '../custom_search_text_field.dart';
import '../list_view_with_title.dart';
import 'recent_search_listview_item_widget.dart';
import 'top_category_item_widget.dart';
import 'trending_listview_item_widget.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 6, bottom: 5),
            child: OffersViewAppBar(),
          ),
          SizedBox(
            width: context.screenWidth * .94,
            height: 55,
            child: const CustomSearchTextField(
              borderRadius: 6,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListViewWithTitle(
            listViewHeight: 130,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            listViewTitle: S.of(context).TopCategories,
            listViewWidget: Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 6,
              ),
              child: TopCategoryItem(),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ListViewWithTitle(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            listViewTitle: S.of(context).TrendingDishes,
            listViewWidget: TrendingListTileItem(),
          ),
          const SizedBox(
            height: 24,
          ),
          ListViewWithTitle(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            listViewTitle: S.of(context).RecentSearches,
            listViewWidget: RecentSearchesListTileItem(),
          ),
        ],
      ),
    );
  }
}
