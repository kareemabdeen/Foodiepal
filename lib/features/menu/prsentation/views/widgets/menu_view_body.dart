import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/features/Home/presentation/views/widgets/custom_appBar.dart';
import 'package:food_app/features/Login/Presentaion/Views/Widgets/custom_button_widget.dart';
import 'package:food_app/features/menu/prsentation/views/widgets/custom_menu_button.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_menu_sign_up_reminder.dart';
import 'menu_buttons_list.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
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
        /*ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person),
              Text('My Account'),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),*/
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: MenuButtonsList(),
        ),
      ],
    );
  }
}
