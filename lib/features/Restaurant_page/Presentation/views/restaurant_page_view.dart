import 'package:flutter/material.dart';
import 'package:food_app/features/Restaurant_page/Presentation/views/widgets/restaurant_view_body.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RestaurantViewBody(),
    );
  }
}
