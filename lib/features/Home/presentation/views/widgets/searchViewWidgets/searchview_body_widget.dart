import 'package:flutter/material.dart';

import '../../../../../../core/utils/helper.dart';
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
          const ListViewWithTitle(
            listViewHeight: 130,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            listViewTitle: 'Top categories',
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
          const ListViewWithTitle(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            listViewTitle: 'Trending Dishes',
            listViewWidget: TrendingListTileItem(),
          ),
          const SizedBox(
            height: 24,
          ),
          const ListViewWithTitle(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            listViewTitle: 'Recent Searches',
            listViewWidget: RecentSearchesListTileItem(),
          ),
        ],
      ),
    );
  }
}
