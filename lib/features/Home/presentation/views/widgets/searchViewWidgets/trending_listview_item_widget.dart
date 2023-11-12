import 'package:flutter/material.dart';

import '../../Styles/ItemsTextStyles.dart';

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
