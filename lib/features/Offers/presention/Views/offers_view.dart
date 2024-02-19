import 'package:flutter/material.dart';

import 'Widgets/offers_view_body.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Scaffold(
        body: OffersViewBody(),
      ),

    );
  }
}
