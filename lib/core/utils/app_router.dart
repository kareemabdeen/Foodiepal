import 'package:flutter/material.dart';
import 'package:food_app/features/Login/Presentaion/Views/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Features/Home/presentation/views/home_view.dart';
import '../../features/onboarding/views/onboarding_view.dart';

abstract class AppRouter {
  static const konBoardingView = '/';
  static const kHomeView = '/HomeView';
  static const kLoginPage = '/LoginPage';
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();
  static Route<dynamic>? onGenerateRoutes(RouteSettings route) {
    String routeName = route.name!;
    //Todo: handling shared prefrence=> Dn

    //Todo: provide the nedded bloc providers here
    switch (routeName) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return FutureBuilder<SharedPreferences>(
              future: _prefs,
              builder: (BuildContext context,
                  AsyncSnapshot<SharedPreferences> snapshot) {
                if (snapshot.hasData) {
                  bool firstTimeForUser =
                      snapshot.data!.getBool('isItFirstTimeForUser') ?? true;

                  if (firstTimeForUser) {
                    return const OnBoardingView();
                  } else {
                    const HomeView();
                  }
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        );

      case kLoginPage:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case kHomeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
    return null;
  }
}
