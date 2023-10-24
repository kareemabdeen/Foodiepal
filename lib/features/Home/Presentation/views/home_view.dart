import 'package:flutter/material.dart';
import 'package:food_app/features/Home/Presentation/views/widgets/category_item_widget.dart';
import 'package:food_app/features/Home/Presentation/views/widgets/resturant_listview_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
          ],
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ResturantListViewItem();
              }),
        )
      ],
    ));
  }
}
