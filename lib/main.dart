import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/core/Business%20Logic/Localization%20Cubit/localization_cubit.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/core/global/themes/dark_theme.dart';
import 'package:food_app/core/global/themes/light_theme.dart';
import 'package:food_app/core/services/dependency_injection.dart';
import 'package:food_app/features/Cart/Presentation/Views/cart_page.dart';
import 'package:food_app/features/Splash/prsentation/views/splash_view.dart';
import 'package:food_app/features/onboarding/views/onboarding_view.dart';
import 'package:food_app/generated/l10n.dart';
import 'core/database/cache/cach_helper.dart';
import 'core/services/dependency_injection.dart';
import 'core/utils/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependecyInjection();
  await getIt<CacheHelper>().init();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ThemeCubit>(
        create: (context) => ThemeCubit()..getCurrentTheme(),
      ),
      BlocProvider<LocalizationCubit>(
        create: (context) => LocalizationCubit()..getCurrentLang(),
      ),
    ],
    child: const FoodiePal(),
  ));
}

class FoodiePal extends StatelessWidget {
  const FoodiePal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, localizationState) {
        return BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp(
              locale: (localizationState is LocalizationChanged)
                  ? localizationState.locale
                  : const Locale('en'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              onGenerateRoute: AppRouter.onGenerateRoutes,
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: getThemeLight(),
              darkTheme: getThemeDark(),
              themeMode:
                  (BlocProvider.of<ThemeCubit>(context).getCurrentTheme() ==
                          'light')
                      ? ThemeMode.light
                      : ThemeMode.dark,
              themeAnimationCurve: decelerateEasing,
              home: const AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.transparent,
                ),
                child: SplashView(),
              ),
            );
          },
        );
      },
    );
  }
}
