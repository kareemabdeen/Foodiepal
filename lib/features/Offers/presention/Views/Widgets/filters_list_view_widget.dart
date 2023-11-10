import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'filters_listview_item_widget.dart';

class FiltersListView extends StatelessWidget {
  FiltersListView({super.key});

  final List<Widget> filters = [
    const Icon(Icons.tune_outlined),
    Text("Sort By",
        style: StylesManager.textStyle14.copyWith(color: Colors.black)),
    Text("Free Delivery",
        style: StylesManager.textStyle14.copyWith(color: Colors.black)),
    Text("Pure Veg",
        style: StylesManager.textStyle14.copyWith(color: Colors.black)),
    Text("Popular",
        style: StylesManager.textStyle14.copyWith(color: Colors.black)),
    Text("Local Brands",
        style: StylesManager.textStyle14.copyWith(color: Colors.black)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          return FiltersListViewItem(
            child: filters[index],
          );
        });
  }
}
