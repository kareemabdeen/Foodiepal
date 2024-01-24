import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/page_title_widget.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_view_appbar.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const OffersViewAppBar(),
        SizedBox(width: context.screenWidth * 0.1),
        const PageTitleWidget(),
      ],
    );
  }
}
