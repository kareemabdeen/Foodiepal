// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `توصيل الآن`
  String get DeliverNow {
    return Intl.message(
      'توصيل الآن',
      name: 'DeliverNow',
      desc: '',
      args: [],
    );
  }

  /// `مرحبا بك ضيفنا`
  String get HiGuest {
    return Intl.message(
      'مرحبا بك ضيفنا',
      name: 'HiGuest',
      desc: '',
      args: [],
    );
  }

  /// `ابحث عن الطعام والبقالة واللحوم وما إلى ذلك`
  String get SearchForFood {
    return Intl.message(
      'ابحث عن الطعام والبقالة واللحوم وما إلى ذلك',
      name: 'SearchForFood',
      desc: '',
      args: [],
    );
  }

  /// `طعام`
  String get Food {
    return Intl.message(
      'طعام',
      name: 'Food',
      desc: '',
      args: [],
    );
  }

  /// `أفضل العروض`
  String get BestOffers {
    return Intl.message(
      'أفضل العروض',
      name: 'BestOffers',
      desc: '',
      args: [],
    );
  }

  /// `المطاعم المشهورة`
  String get PopularRestaurants {
    return Intl.message(
      'المطاعم المشهورة',
      name: 'PopularRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `الافضل لتناول الطعام`
  String get BestToDineIn {
    return Intl.message(
      'الافضل لتناول الطعام',
      name: 'BestToDineIn',
      desc: '',
      args: [],
    );
  }

  /// ` الرئيسية`
  String get Home {
    return Intl.message(
      ' الرئيسية',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `تناول الطعام في المطعم`
  String get DineIn {
    return Intl.message(
      'تناول الطعام في المطعم',
      name: 'DineIn',
      desc: '',
      args: [],
    );
  }

  /// `البدء`
  String get getStarted {
    return Intl.message(
      'البدء',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `سلطة`
  String get salad {
    return Intl.message(
      'سلطة',
      name: 'salad',
      desc: '',
      args: [],
    );
  }

  /// `25 دقيقة`
  String get min {
    return Intl.message(
      '25 دقيقة',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `صيني | مأكولات بحرية `
  String get dishDescription {
    return Intl.message(
      'صيني | مأكولات بحرية ',
      name: 'dishDescription',
      desc: '',
      args: [],
    );
  }

  /// `توصيل الطعام عند الباب`
  String get onboardingTitleOne {
    return Intl.message(
      'توصيل الطعام عند الباب',
      name: 'onboardingTitleOne',
      desc: '',
      args: [],
    );
  }

  /// `توصيل البقالة والضروريات`
  String get onboardingTitleTwo {
    return Intl.message(
      'توصيل البقالة والضروريات',
      name: 'onboardingTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// `تناول الطعام في المطاعم الراقية`
  String get onboardingTitleThree {
    return Intl.message(
      'تناول الطعام في المطاعم الراقية',
      name: 'onboardingTitleThree',
      desc: '',
      args: [],
    );
  }

  /// `تسليم أي حزمة`
  String get onboardingTitleFour {
    return Intl.message(
      'تسليم أي حزمة',
      name: 'onboardingTitleFour',
      desc: '',
      args: [],
    );
  }

  /// `احصل على طعام شهي ولذيذ في خدمتك في وقت أقل`
  String get onboardingSubtitleOne {
    return Intl.message(
      'احصل على طعام شهي ولذيذ في خدمتك في وقت أقل',
      name: 'onboardingSubtitleOne',
      desc: '',
      args: [],
    );
  }

  /// `احصل على طعام شهي ولذيذ في خدمتك في وقت أقل`
  String get onboardingSubTitleTwo {
    return Intl.message(
      'احصل على طعام شهي ولذيذ في خدمتك في وقت أقل',
      name: 'onboardingSubTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// `احصل على طعام شهي ولذيذ في خدمتك في وقت أقل`
  String get onboardingSubTitleThree {
    return Intl.message(
      'احصل على طعام شهي ولذيذ في خدمتك في وقت أقل',
      name: 'onboardingSubTitleThree',
      desc: '',
      args: [],
    );
  }

  /// `احصل على طعام شهي ولذيذ في خدمتك في وقت أقل`
  String get onboardingSubTitleFour {
    return Intl.message(
      'احصل على طعام شهي ولذيذ في خدمتك في وقت أقل',
      name: 'onboardingSubTitleFour',
      desc: '',
      args: [],
    );
  }

  /// `سجل او أنشأ حساب `
  String get loginOrCreateAnAccount {
    return Intl.message(
      'سجل او أنشأ حساب ',
      name: 'loginOrCreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `سجل ياستخدام فيس بوك`
  String get ContinueWithFacebook {
    return Intl.message(
      'سجل ياستخدام فيس بوك',
      name: 'ContinueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `سجل ياستخدام جوجل`
  String get ContinueWithGoogle {
    return Intl.message(
      'سجل ياستخدام جوجل',
      name: 'ContinueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `سجل باستخدام البريد الالكتروني`
  String get ContinueWithEmail {
    return Intl.message(
      'سجل باستخدام البريد الالكتروني',
      name: 'ContinueWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `سجل دخولك او انشأ حساب لتجربة افضل وسرعة تسوق وحفظ بيناتك والكثير من المميزات`
  String get LogInOrCreateAnAccountForAFasterOrderingExperience {
    return Intl.message(
      'سجل دخولك او انشأ حساب لتجربة افضل وسرعة تسوق وحفظ بيناتك والكثير من المميزات',
      name: 'LogInOrCreateAnAccountForAFasterOrderingExperience',
      desc: '',
      args: [],
    );
  }

  /// `هذا المطعم لا يقبل الطلبات الخاصة حاليًا`
  String get thisRestaurantNotAcceptedRequetsts {
    return Intl.message(
      'هذا المطعم لا يقبل الطلبات الخاصة حاليًا',
      name: 'thisRestaurantNotAcceptedRequetsts',
      desc: '',
      args: [],
    );
  }

  /// `أضف إلى السلة`
  String get addToBasket {
    return Intl.message(
      'أضف إلى السلة',
      name: 'addToBasket',
      desc: '',
      args: [],
    );
  }

  /// `التالي`
  String get next {
    return Intl.message(
      'التالي',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `تخطى`
  String get skip {
    return Intl.message(
      'تخطى',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `آخرين`
  String get others {
    return Intl.message(
      'آخرين',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `عروض`
  String get offers {
    return Intl.message(
      'عروض',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `فوديبال`
  String get foodipal {
    return Intl.message(
      'فوديبال',
      name: 'foodipal',
      desc: '',
      args: [],
    );
  }

  /// `تم التوصيل بواسطة`
  String get deliveredBy {
    return Intl.message(
      'تم التوصيل بواسطة',
      name: 'deliveredBy',
      desc: '',
      args: [],
    );
  }

  /// `وقت التسليم`
  String get deliveredTime {
    return Intl.message(
      'وقت التسليم',
      name: 'deliveredTime',
      desc: '',
      args: [],
    );
  }

  /// `60 دقيقة`
  String get sixtyMin {
    return Intl.message(
      '60 دقيقة',
      name: 'sixtyMin',
      desc: '',
      args: [],
    );
  }

  /// `رسوم التوصيل`
  String get deliveryFee {
    return Intl.message(
      'رسوم التوصيل',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `25 جنيهًا مصريًا`
  String get egy25 {
    return Intl.message(
      '25 جنيهًا مصريًا',
      name: 'egy25',
      desc: '',
      args: [],
    );
  }

  /// `ج.م`
  String get egy {
    return Intl.message(
      'ج.م',
      name: 'egy',
      desc: '',
      args: [],
    );
  }

  /// `ستاربكس`
  String get restaurantName {
    return Intl.message(
      'ستاربكس',
      name: 'restaurantName',
      desc: '',
      args: [],
    );
  }

  /// `التقييم`
  String get rating {
    return Intl.message(
      'التقييم',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `التسجيل`
  String get signUp {
    return Intl.message(
      'التسجيل',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `اسم المستخدم`
  String get userName {
    return Intl.message(
      'اسم المستخدم',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `أهلا بك`
  String get HeyThere {
    return Intl.message(
      'أهلا بك',
      name: 'HeyThere',
      desc: '',
      args: [],
    );
  }

  /// `حسابي`
  String get myAccount {
    return Intl.message(
      'حسابي',
      name: 'myAccount',
      desc: '',
      args: [],
    );
  }

  /// `العنوان`
  String get address {
    return Intl.message(
      'العنوان',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `المفضلات`
  String get favourites {
    return Intl.message(
      'المفضلات',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `الاعدادات`
  String get settings {
    return Intl.message(
      'الاعدادات',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `الدفع`
  String get payment {
    return Intl.message(
      'الدفع',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `طلباتي`
  String get myOrders {
    return Intl.message(
      'طلباتي',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `المساعدة`
  String get help {
    return Intl.message(
      'المساعدة',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `ثيم`
  String get Theme {
    return Intl.message(
      'ثيم',
      name: 'Theme',
      desc: '',
      args: [],
    );
  }

  /// `تغيير اللغة`
  String get ChangeLanguage {
    return Intl.message(
      'تغيير اللغة',
      name: 'ChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `منتجات محلية`
  String get localBrands {
    return Intl.message(
      'منتجات محلية',
      name: 'localBrands',
      desc: '',
      args: [],
    );
  }

  /// `مشهور`
  String get popular {
    return Intl.message(
      'مشهور',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `نباتي`
  String get pureVeg {
    return Intl.message(
      'نباتي',
      name: 'pureVeg',
      desc: '',
      args: [],
    );
  }

  /// `شحن مجاني`
  String get freeDelivery {
    return Intl.message(
      'شحن مجاني',
      name: 'freeDelivery',
      desc: '',
      args: [],
    );
  }

  /// `ترتيب ب`
  String get sortBy {
    return Intl.message(
      'ترتيب ب',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `افضل الاصناف`
  String get TopCategories {
    return Intl.message(
      'افضل الاصناف',
      name: 'TopCategories',
      desc: '',
      args: [],
    );
  }

  /// `الاطباق المنتشرة`
  String get TrendingDishes {
    return Intl.message(
      'الاطباق المنتشرة',
      name: 'TrendingDishes',
      desc: '',
      args: [],
    );
  }

  /// `اخر البحث`
  String get RecentSearches {
    return Intl.message(
      'اخر البحث',
      name: 'RecentSearches',
      desc: '',
      args: [],
    );
  }

  /// `بيتزا`
  String get Pizza {
    return Intl.message(
      'بيتزا',
      name: 'Pizza',
      desc: '',
      args: [],
    );
  }

  /// `كشري`
  String get Koshary {
    return Intl.message(
      'كشري',
      name: 'Koshary',
      desc: '',
      args: [],
    );
  }

  /// `مأكولات بحرية`
  String get PanneerMomos {
    return Intl.message(
      'مأكولات بحرية',
      name: 'PanneerMomos',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
