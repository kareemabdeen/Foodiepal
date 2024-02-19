import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/generated/l10n.dart';

import '../../Styles/ItemsTextStyles.dart';

class RecentSearchesListTileItem extends StatelessWidget {
  const RecentSearchesListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    return ListTile(
      leading: Icon(
        Icons.history,
        color: theme == "light" ? Colors.black : Colors.white,
      ), //Todo: need to be more customized for our design , search for it later
      title: Text(S.of(context).Koshary,
          style: Theme.of(context).textTheme.titleSmall),
      trailing: const Icon(
        Icons.close,
      ), //,
    );
  }
}
