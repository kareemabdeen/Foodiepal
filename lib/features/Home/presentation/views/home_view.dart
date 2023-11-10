import 'package:flutter/material.dart';

import '../../presentation/views/widgets/home_view_body.dart';
import 'widgets/bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: const BuildNavigatorBar(),
    );
  }
}
