import 'package:bloc/bloc.dart';
import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeChanged(theme: 'light'));

  String getCurrentTheme() {
    final String? currentTheme = CacheHelper().getDataString(key: 'theme');
    if (currentTheme != null) {
      emit(ThemeChanged(theme: currentTheme));
      return currentTheme;
    } else {
      emit(ThemeChanged(theme: 'light'));
      return 'light';
    }
  }

  void changeTheme(String oldTheme) {
    if (oldTheme == 'light') {
      CacheHelper().saveData(key: 'theme', value: 'dark');
      emit(ThemeChanged(theme: 'dark'));
    } else {
      CacheHelper().saveData(key: 'theme', value: 'light');
      emit(ThemeChanged(theme: 'light'));
    }
  }
}
