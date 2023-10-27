import 'package:flutter/material.dart';
import 'package:food_app/features/onboarding/views/onboarding_view.dart';

import '../../Features/Home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const konBoardingView = '/';
  static const kHomeView = '/HomeView';

  static Route<dynamic>? onGenerateRoutes(RouteSettings route) {
    String routeName = route.name!;

    //FIXME: provide the nedded bloc providers here
    switch (routeName) {
      case konBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case kHomeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
    return null;
  }
}
