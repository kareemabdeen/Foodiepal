import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/database/cache/cach_helper.dart';
import 'core/services/dependency_injection.dart';
import 'core/utils/app_router.dart';
import 'features/Restaurant_page/Presentation/views/restaurant_page_view.dart';
import 'features/Splash/prsentation/views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependecyInjection();
  await getIt<CacheHelper>().init();

  runApp(const FoodiePal());
}

class FoodiePal extends StatelessWidget {
  const FoodiePal({super.key});

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
        child: SplashView(), //Todo: put Splash view instead
      ),
    );
  }
}
