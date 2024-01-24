import 'package:flutter/material.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offer_item_details_sheet.dart';

import 'offers_listview_item_widget.dart';

class OffersListView extends StatefulWidget {
  const OffersListView({super.key});

  @override
  State<OffersListView> createState() => _OffersListViewState();
}

class _OffersListViewState extends State<OffersListView> {
  bool _showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _showSheet = !_showSheet;
                    },
                  );
                },
                child: const OfferListViewItem());
          },
        ),
        if (_showSheet) const OfferItemDetailsSheet(),
      ],
    );
  }
}
