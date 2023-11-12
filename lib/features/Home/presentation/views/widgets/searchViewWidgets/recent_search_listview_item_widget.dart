import 'package:flutter/material.dart';

import '../../Styles/ItemsTextStyles.dart';

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
