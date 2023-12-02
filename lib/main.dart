import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/core/services/dependency_injection.dart';
import 'package:food_app/features/Restaurant_page/Presentation/views/restaurant_page_view.dart';

import 'core/database/cache/cach_helper.dart';
import 'core/utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependecyInjection();
  await getIt<CacheHelper>().init();

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
        navigationBarTheme: const NavigationBarThemeData(
          shadowColor: Colors.grey,
        ),
        primaryColor: const Color(0xffFFFFFF),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white),
          showSelectedLabels: true,
        ),
      ),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: RestaurantView(), //Todo: put Splash view instead
      ),
    );
  }
}
