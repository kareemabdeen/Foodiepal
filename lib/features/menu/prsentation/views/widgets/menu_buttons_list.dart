import 'package:flutter/material.dart';

import 'custom_menu_button.dart';

class MenuButtonsList extends StatelessWidget {
  const MenuButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'My Account',
          leadingIcon: Icons.person_outline,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'My Orders',
          leadingIcon: Icons.shopping_bag_sharp,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'Payments',
          leadingIcon: Icons.payment,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'Address',
          leadingIcon: Icons.location_on,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'Favourites',
          leadingIcon: Icons.favorite_border,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'Settings',
          leadingIcon: Icons.settings,
        ),
        const SizedBox(height: 5),
        CustomMenuButton(
          buttonFunction: () {},
          buttonTitle: 'Help',
          leadingIcon: Icons.help_outline,
        ),
      ],
    );
  }
}
