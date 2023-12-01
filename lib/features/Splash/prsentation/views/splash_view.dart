import 'package:flutter/material.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:food_app/core/services/dependency_injection.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    determineNaviationScreenAccordingToUserHistory();
  }

  void determineNaviationScreenAccordingToUserHistory() {
    bool isOnboardingvisited =
        getIt<CacheHelper>().getData(key: isOnBoardingvisited) ?? false;

    if (isOnboardingvisited) {
      //Todo: to be changed to login page

      delayedNavigation(context, path: AppRouter.kHomeView);
    } else {
      delayedNavigation(context, path: AppRouter.konBoardingView);
    }
  }

  void delayedNavigation(BuildContext context, {required String path}) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/images/Animation - 1701022826753.json',
          fit: BoxFit.contain,
          reverse: true,
        ),
      ),
    );
  }
}
