import 'package:flutter/material.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_listview_item.dart';

import '../Styles/ItemsTextStyles.dart';

class ListViewWithTitle extends StatelessWidget {
  final String listViewTitle;
  final Widget listViewWidget;

  const ListViewWithTitle(
      {super.key, required this.listViewTitle, required this.listViewWidget});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            listViewTitle,
            style: ItemsTextStyles.headerText24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 240,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return listViewWidget;
              },
            ),
          ),
        ),
      ],
    );
  }
}
