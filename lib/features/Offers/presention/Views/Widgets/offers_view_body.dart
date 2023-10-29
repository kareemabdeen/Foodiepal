import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_router.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';
import 'package:food_app/features/Home/presentation/views/Styles/ItemsTextStyles.dart';
import 'package:food_app/features/Home/presentation/views/widgets/fav_cirular_button_widget.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_details_widget.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_image_widget.dart';
import 'package:food_app/features/Home/presentation/views/widgets/resturant_rating_distance_widget.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/filters_list_view_widget.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_listview_widget.dart';
import 'package:food_app/features/Offers/presention/Views/Widgets/offers_view_appbar.dart';

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
                  child: FiltersListView()),
              SizedBox(
                  height: context.screenHight,
                  width: context.screenWidth,
                  child: const OffersListView()),
            ],
          ),
        ),
      ),
    );
  }
}
