import 'package:flutter/material.dart';

import 'widgets/searchViewWidgets/searchview_body_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
