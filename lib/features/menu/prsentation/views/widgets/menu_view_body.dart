import 'package:flutter/material.dart';

import 'package:food_app/features/Offers/presention/Views/Widgets/offers_view_appbar.dart';
import 'package:food_app/generated/l10n.dart';


import '../../../../../core/utils/styles.dart';
import '../../../../Home/presentation/views/widgets/custom_appBar.dart';
import '../../../../Offers/presention/Views/Widgets/offers_view_appbar.dart';
import 'custom_menu_sign_up_reminder.dart';
import 'menu_buttons_list.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomAppBar(
              title: S.of(context).userName,
              titleStyle: Theme.of(context).textTheme.headlineLarge!,
              subTitle: '+91 0520545164',
              subTitleStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey, fontSize: 15.00),
              icon: Icons.person_outline,
              iconSize: 48,
              iconFunction: () {},
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12.0, right: 12, left: 12),
            child: SignUpReminder(),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: MenuButtonsList(),
          ),
        ],
      ),
    );
  }
}
