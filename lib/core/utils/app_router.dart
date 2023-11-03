import 'package:flutter/material.dart';
import 'package:food_app/features/Home/Presentation/views/home_view.dart';
import 'package:food_app/features/Login/Presentaion/Views/login_view.dart';
import 'package:food_app/features/onboarding/views/onboarding_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRouter {
  static const konBoardingView = '/';
  static const kHomeView = '/HomeView';
  static const kLoginPage = '/LoginPage';

  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return FutureBuilder<SharedPreferences>(
            future: _prefs,
            builder: (BuildContext context,
                AsyncSnapshot<SharedPreferences> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                SharedPreferences prefs = snapshot.data!;
                bool isFirstTimeUser = prefs.getBool('isFirstTimeUser') ?? true;

                if (isFirstTimeUser) {
                  _updateUserPreference(prefs, false);

                  return const OnBoardingView();
                } else {
                  return const LoginView();
                }
              }
            },
          );
        });
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }

  static void _updateUserPreference(SharedPreferences prefs, bool value) {
    prefs.setBool('isFirstTimeUser', value).then((success) {
      if (success) {
        debugPrint('User preference updated successfully');
      } else {
        debugPrint('Failed to update user preference');
      }
    });
  }
}
