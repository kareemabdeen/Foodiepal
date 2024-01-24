import 'package:flutter/material.dart';

import '../../Features/Home/presentation/views/home_view.dart';
import '../../features/Home/Presentation/views/search_view.dart';
import '../../features/Login/Presentaion/Views/login_view.dart';
import '../../features/Offers/presention/Views/offers_view.dart';
import '../../features/Restaurant_page/Presentation/views/restaurant_page_view.dart';
import '../../features/menu/prsentation/views/menu_view.dart';
import '../../features/onboarding/views/onboarding_view.dart';

abstract class AppRouter {
  static const kSplashscreen = '/';
  static const konBoardingView = '/onboarding';
  static const kHomeView = '/HomeView';
  static const kLoginPage = '/LoginPage';
  static const kSearchPage = '/searchPage';

  static const kOffersView = '/OffersView';

  static const kMenuPage = '/MenuPage';
  static const kRestaurantPage = '/restaurantPage';

  static Route<dynamic>? onGenerateRoutes(RouteSettings route) {
    String routeName = route.name!;

    //! provide the nedded bloc providers here
    switch (routeName) {
      case konBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case kHomeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case kLoginPage:
        return MaterialPageRoute(builder: (context) => const LoginView());

      case kOffersView:
        return MaterialPageRoute(builder: (context) => const OffersView());

      case kMenuPage:
        return MaterialPageRoute(builder: (context) => const MenuView());

      case kSearchPage:
        return MaterialPageRoute(builder: (context) => const SearchView());
      case kRestaurantPage:
        return MaterialPageRoute(builder: (context) => const RestaurantView());
    }
    return null;
  }
}
