import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependecyInjection() {
  getIt.registerLazySingleton<CacheHelper>(
    () => CacheHelper(),
  );
}
