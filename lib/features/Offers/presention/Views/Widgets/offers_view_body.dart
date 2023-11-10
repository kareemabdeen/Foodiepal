import 'package:flutter/material.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OfferdViewAppBar(),
              const SizedBox(height: 10),
              const Text(
                'Offers',
                style: StylesManager.textStyle26,
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
