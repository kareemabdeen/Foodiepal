import 'package:flutter/material.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_listview_item_widget.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const OfferListViewItem();
        });
  }
}
