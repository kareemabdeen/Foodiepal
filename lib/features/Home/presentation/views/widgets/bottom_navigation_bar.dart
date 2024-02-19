import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

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
      indicatorColor: Theme.of(context).navigationBarTheme.indicatorColor,
      backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      elevation: 0,
      shadowColor: Theme.of(context).navigationBarTheme.shadowColor,
      indicatorShape: ShapeBorder.lerp(
        const StadiumBorder(side: BorderSide.none),
        const StadiumBorder(side: BorderSide.none),
        2.3,
      ),
      selectedIndex: currentPageIndex!,
      onDestinationSelected: (slectedIndex) {
        setState(() {
          currentPageIndex = slectedIndex;
        });
      },
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: S.of(context).Home,
        ),
        NavigationDestination(
          icon: Icon(Icons.ramen_dining_outlined),
          selectedIcon: Icon(Icons.ramen_dining),
          label: S.of(context).Food,
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.dining),
          icon: Icon(Icons.dining_outlined),
          label: S.of(context).DineIn,
        ),
      ],
    );
  }
}
