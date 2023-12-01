import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';

import '../Styles/ItemsTextStyles.dart';

class ListViewWithTitle extends StatelessWidget {
  final String listViewTitle;
  final Widget listViewWidget;
  final Axis scrollDirection;
  final ScrollPhysics physics;
  final double listViewHeight;

  const ListViewWithTitle({
    super.key,
    required this.listViewTitle,
    required this.listViewWidget,
    required this.scrollDirection,
    required this.physics,
    this.listViewHeight = 240, // 240
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max, // min
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
            height: listViewHeight,
            child: ListView.builder(
              physics: physics,
              scrollDirection: scrollDirection,
              // shrinkWrap: true,
              itemCount: 20,

              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: context.screenWidth * .02),
                  child: listViewWidget,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
