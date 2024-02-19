import 'package:flutter/material.dart';

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
    this.listViewHeight = 220, // 240
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min, // min
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            listViewTitle,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 22, fontWeight: FontWeight.w800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 15, left: 15),
          child: SizedBox(
            height: listViewHeight,
            child: ListView.builder(
              physics: physics,
              scrollDirection: scrollDirection,
              //shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
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
