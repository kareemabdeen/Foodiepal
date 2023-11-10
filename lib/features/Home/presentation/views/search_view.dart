import 'package:flutter/material.dart';

import '../../../../Features/Home/presentation/views/Styles/ItemsTextStyles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/helper.dart';
import 'widgets/custom_search_text_field.dart';
import 'widgets/list_view_with_title.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}

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

class TopCategoryItem extends StatelessWidget {
  const TopCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 16,
        ),
        const CircleAvatar(
          backgroundColor: Color(0xffF8F8F8),
          radius: 35,
          backgroundImage: AssetImage(Assets.imagesPizza),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Pizza',
          style: ItemsTextStyles.headerText24.copyWith(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class TrendingDishesListView extends StatelessWidget {
  const TrendingDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(24),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const TrendingListTileItem();
      },
    );
  }
}

class TrendingListTileItem extends StatelessWidget {
  const TrendingListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.search,
      ), //Todo: need to be more customized for our design , search for it later
      title: Text(
        'Paneer Momos',
        style: ItemsTextStyles.textStyle13.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}

class RecentSearchesListTileItem extends StatelessWidget {
  const RecentSearchesListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.history,
      ), //Todo: need to be more customized for our design , search for it later
      title: Text(
        'Koshary',
        style: ItemsTextStyles.textStyle13.copyWith(
          color: Colors.black12,
        ),
      ),
      trailing: const Icon(
        Icons.close,
      ), //,
    );
  }
}
