import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/generated/l10n.dart';

import '../../Styles/ItemsTextStyles.dart';

class TrendingListTileItem extends StatelessWidget {
  const TrendingListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    return ListTile(
      leading: Icon(
        Icons.search,
        color: theme == 'light' ? Colors.black : Colors.white,
      ), //Todo: need to be more customized for our design , search for it later
      title: Text(S.of(context).PanneerMomos,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
