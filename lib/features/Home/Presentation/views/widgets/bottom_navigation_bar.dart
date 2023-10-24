import 'package:flutter/material.dart';

class BuildNavigatorBar extends StatefulWidget {
  const BuildNavigatorBar({
    super.key,
  });

  @override
  State<BuildNavigatorBar> createState() => _BuildNavigatorBarState();
}

class _BuildNavigatorBarState extends State<BuildNavigatorBar> {
  int? currentPageIndex;
  @override
  void initState() {
    super.initState();
    currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color(0xffFFFFFF),
      selectedIndex: currentPageIndex!,
      onDestinationSelected: (slectedIndex) {
        setState(() {
          currentPageIndex = slectedIndex;
        });
      },
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.ramen_dining_outlined),
          selectedIcon: Icon(Icons.ramen_dining),
          label: 'Food',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.dining_outlined),
          icon: Icon(Icons.dining),
          label: 'Dine In',
        ),
      ],
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BuildNavigatorBar(),
    );
  }
}
