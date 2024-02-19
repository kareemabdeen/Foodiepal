import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Localization%20Cubit/localization_cubit.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:food_app/generated/l10n.dart';

import 'custom_menu_button.dart';

class MenuButtonsList extends StatelessWidget {
  const MenuButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).myAccount,
          leadingIcon: Icons.person_outline,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).myOrders,
          leadingIcon: Icons.shopping_bag_sharp,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).payment,
          leadingIcon: Icons.payment,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).address,
          leadingIcon: Icons.location_on,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).favourites,
          leadingIcon: Icons.favorite_border,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).settings,
          leadingIcon: Icons.settings,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: S.of(context).help,
          leadingIcon: Icons.help_outline,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {
            String oldLang = CacheHelper().getData(key: 'language');
            print("$oldLang");
            BlocProvider.of<LocalizationCubit>(context).changeLang(oldLang);
            print("new lang :${CacheHelper().getData(key: 'language')}");
          },
          buttonTitle: S.of(context).ChangeLanguage,
          leadingIcon: Icons.language,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {
            String oldTheme =
                BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
            BlocProvider.of<ThemeCubit>(context).changeTheme(oldTheme);
          },
          buttonTitle: S.of(context).Theme,
          leadingIcon: Icons.change_circle,
        ),
      ],
    );
  }
}
