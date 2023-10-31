import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'features/Home/presentation/views/home_view.dart';
=======
import 'package:flutter/services.dart';
import 'package:food_app/core/utils/app_router.dart';
import 'package:food_app/features/onboarding/views/onboarding_view.dart';
>>>>>>> main

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: Colors.transparent),
        ),
      ),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: OnBoardingView(),
      ),
    );
  }
}
