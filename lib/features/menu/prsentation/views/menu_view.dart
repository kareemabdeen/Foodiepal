import 'package:flutter/material.dart';

import 'widgets/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: MenuViewBody()),
    );
  }
}
