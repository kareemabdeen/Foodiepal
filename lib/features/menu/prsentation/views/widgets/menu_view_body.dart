import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../Home/presentation/views/widgets/custom_appBar.dart';
import '../../../../Offers/presention/Views/Widgets/offers_view_appbar.dart';
import 'custom_menu_sign_up_reminder.dart';
import 'menu_buttons_list.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10,
          ),
          child: OffersViewAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomAppBar(
            title: 'Vicky john',
            titleStyle: StylesManager.textStyle30,
            subTitle: '+91 0520545164',
            subTitleStyle: StylesManager.textStyle16
                .copyWith(color: Colors.black.withOpacity(0.5)),
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
    );
  }
}
