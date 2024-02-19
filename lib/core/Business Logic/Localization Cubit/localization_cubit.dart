import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:meta/meta.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  String getCurrentLang() {
    final String? currentLangCode = CacheHelper().getData(key: 'language');
    if (currentLangCode != null) {
      emit(LocalizationChanged(locale: Locale(currentLangCode)));
      return currentLangCode;
    } else {
      emit(LocalizationChanged(locale: const Locale('en')));
      return 'en';
    }
  }

  void changeLang(String oldLang) {
    if (oldLang == "ar") {
      CacheHelper().saveData(key: 'language', value: 'en');
      print("cache lang :${CacheHelper().getData(key: 'language')}");
      emit(LocalizationChanged(locale: const Locale('en')));
    } else {
      CacheHelper().saveData(key: 'language', value: 'ar');
      emit(LocalizationChanged(locale: const Locale('ar')));
    }
  }
}
