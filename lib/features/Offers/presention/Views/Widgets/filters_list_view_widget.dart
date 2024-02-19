import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../core/utils/styles.dart';
import 'filters_listview_item_widget.dart';

class FiltersListView extends StatelessWidget {
  const FiltersListView({super.key});

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    final List<Widget> filters = [
      Icon(
        Icons.tune_outlined,
        color: theme == "light" ? Colors.black : Colors.white,
      ),
      Text(S.of(context).sortBy,
          style: Theme.of(context).textTheme.titleSmall!),
      Text(S.of(context).freeDelivery,
          style: Theme.of(context).textTheme.titleSmall!),
      Text(S.of(context).pureVeg,
          style: Theme.of(context).textTheme.titleSmall!),
      Text(S.of(context).popular,
          style: Theme.of(context).textTheme.titleSmall!),
      Text(S.of(context).localBrands,
          style: Theme.of(context).textTheme.titleSmall!),
    ];
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
