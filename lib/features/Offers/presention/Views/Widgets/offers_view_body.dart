import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../core/utils/helper.dart';
import '../../../../../core/utils/styles.dart';
import 'filters_list_view_widget.dart';
import 'offers_listview_widget.dart';
import 'offers_view_appbar.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 8),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OffersViewAppBar(),
              const SizedBox(height: 10),
              Text(
                S.of(context).offers,
                style: Theme.of(context).textTheme.headlineLarge!,
              ),
              SizedBox(
                width: context.screenWidth,
                height: 50,
                child: FiltersListView(),
              ),
              SizedBox(
                height: context.screenHight,
                width: context.screenWidth,
                child: const OffersListView(),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
