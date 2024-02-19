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

  /// `Deliver Now`
  String get DeliverNow {
    return Intl.message(
      'Deliver Now',
      name: 'DeliverNow',
      desc: '',
      args: [],
    );
  }

  /// `Hi guest`
  String get HiGuest {
    return Intl.message(
      'Hi guest',
      name: 'HiGuest',
      desc: '',
      args: [],
    );
  }

  /// `Search for food, grocery, meat etc`
  String get SearchForFood {
    return Intl.message(
      'Search for food, grocery, meat etc',
      name: 'SearchForFood',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get Food {
    return Intl.message(
      'Food',
      name: 'Food',
      desc: '',
      args: [],
    );
  }

  /// `Best Offers`
  String get BestOffers {
    return Intl.message(
      'Best Offers',
      name: 'BestOffers',
      desc: '',
      args: [],
    );
  }

  /// `Popular Restaurants`
  String get PopularRestaurants {
    return Intl.message(
      'Popular Restaurants',
      name: 'PopularRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `Best To Dine-In`
  String get BestToDineIn {
    return Intl.message(
      'Best To Dine-In',
      name: 'BestToDineIn',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Dine In`
  String get DineIn {
    return Intl.message(
      'Dine In',
      name: 'DineIn',
      desc: '',
      args: [],
    );
  }

  /// `Get Started  `
  String get getStarted {
    return Intl.message(
      'Get Started  ',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Salad`
  String get salad {
    return Intl.message(
      'Salad',
      name: 'salad',
      desc: '',
      args: [],
    );
  }

  /// `25 mins`
  String get min {
    return Intl.message(
      '25 mins',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `Chinese | Thai | Seaf..`
  String get dishDescription {
    return Intl.message(
      'Chinese | Thai | Seaf..',
      name: 'dishDescription',
      desc: '',
      args: [],
    );
  }

  /// `Food delivery at door ste `
  String get onboardingTitleOne {
    return Intl.message(
      'Food delivery at door ste ',
      name: 'onboardingTitleOne',
      desc: '',
      args: [],
    );
  }

  /// `Grocery & Essentials Delivery `
  String get onboardingTitleTwo {
    return Intl.message(
      'Grocery & Essentials Delivery ',
      name: 'onboardingTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// ` Dine In in fine resturants  `
  String get onboardingTitleThree {
    return Intl.message(
      ' Dine In in fine resturants  ',
      name: 'onboardingTitleThree',
      desc: '',
      args: [],
    );
  }

  /// `Get any Pacage Delivered`
  String get onboardingTitleFour {
    return Intl.message(
      'Get any Pacage Delivered',
      name: 'onboardingTitleFour',
      desc: '',
      args: [],
    );
  }

  /// `Get yummy deticious food at your\n service in within less time`
  String get onboardingSubtitleOne {
    return Intl.message(
      'Get yummy deticious food at your\n service in within less time',
      name: 'onboardingSubtitleOne',
      desc: '',
      args: [],
    );
  }

  /// ` Get yummy deticious food at your\n service in within less time`
  String get onboardingSubTitleTwo {
    return Intl.message(
      ' Get yummy deticious food at your\n service in within less time',
      name: 'onboardingSubTitleTwo',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'onboardingSubTitleThree ' key

  /// ` Get yummy deticious food at your\n service in within less time `
  String get onboardingSubTitleFour {
    return Intl.message(
      ' Get yummy deticious food at your\n service in within less time ',
      name: 'onboardingSubTitleFour',
      desc: '',
      args: [],
    );
  }

  /// `This resturant does not currently accept \n special requests`
  String get thisRestaurantNotAcceptedRequetsts {
    return Intl.message(
      'This resturant does not currently accept \n special requests',
      name: 'thisRestaurantNotAcceptedRequetsts',
      desc: '',
      args: [],
    );
  }

  /// ` Add to basket`
  String get addToBasket {
    return Intl.message(
      ' Add to basket',
      name: 'addToBasket',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `others`
  String get others {
    return Intl.message(
      'others',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Foodipal`
  String get foodipal {
    return Intl.message(
      'Foodipal',
      name: 'foodipal',
      desc: '',
      args: [],
    );
  }

  /// `Delivered by`
  String get deliveredBy {
    return Intl.message(
      'Delivered by',
      name: 'deliveredBy',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Time`
  String get deliveredTime {
    return Intl.message(
      'Delivery Time',
      name: 'deliveredTime',
      desc: '',
      args: [],
    );
  }

  /// `  60 mins`
  String get sixtyMin {
    return Intl.message(
      '  60 mins',
      name: 'sixtyMin',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery Fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `EGY 25.00`
  String get egy25 {
    return Intl.message(
      'EGY 25.00',
      name: 'egy25',
      desc: '',
      args: [],
    );
  }

  /// `EGY`
  String get egy {
    return Intl.message(
      'EGY',
      name: 'egy',
      desc: '',
      args: [],
    );
  }

  /// `StarBucks`
  String get restaurantName {
    return Intl.message(
      'StarBucks',
      name: 'restaurantName',
      desc: '',
      args: [],
    );
  }

  /// `Ratings`
  String get rating {
    return Intl.message(
      'Ratings',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// ` Sign up`
  String get signUp {
    return Intl.message(
      ' Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// ` Hey there!`
  String get heyThere {
    return Intl.message(
      ' Hey there!',
      name: 'heyThere',
      desc: '',
      args: [],
    );
  }

  /// `Log in or create an account`
  String get loginOrCreateAnAccount {
    return Intl.message(
      'Log in or create an account',
      name: 'loginOrCreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in or create an account for a faster ordering experience.`
  String get LogInOrCreateAnAccountForAFasterOrderingExperience {
    return Intl.message(
      'Log in or create an account for a faster ordering experience.',
      name: 'LogInOrCreateAnAccountForAFasterOrderingExperience',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get ContinueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'ContinueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get ContinueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'ContinueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Email`
  String get ContinueWithEmail {
    return Intl.message(
      'Continue with Email',
      name: 'ContinueWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Hey there`
  String get HeyThere {
    return Intl.message(
      'Hey there',
      name: 'HeyThere',
      desc: '',
      args: [],
    );
  }

  /// `myAccount`
  String get myAccount {
    return Intl.message(
      'myAccount',
      name: 'myAccount',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get favourites {
    return Intl.message(
      'Favourites',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get Theme {
    return Intl.message(
      'Theme',
      name: 'Theme',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get ChangeLanguage {
    return Intl.message(
      'Change Language',
      name: 'ChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Local Brands`
  String get localBrands {
    return Intl.message(
      'Local Brands',
      name: 'localBrands',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Pure Veg`
  String get pureVeg {
    return Intl.message(
      'Pure Veg',
      name: 'pureVeg',
      desc: '',
      args: [],
    );
  }

  /// `Free Delivery`
  String get freeDelivery {
    return Intl.message(
      'Free Delivery',
      name: 'freeDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Sort By`
  String get sortBy {
    return Intl.message(
      'Sort By',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Top categories`
  String get TopCategories {
    return Intl.message(
      'Top categories',
      name: 'TopCategories',
      desc: '',
      args: [],
    );
  }

  /// `Trending Dishes`
  String get TrendingDishes {
    return Intl.message(
      'Trending Dishes',
      name: 'TrendingDishes',
      desc: '',
      args: [],
    );
  }

  /// `Recent Searches`
  String get RecentSearches {
    return Intl.message(
      'Recent Searches',
      name: 'RecentSearches',
      desc: '',
      args: [],
    );
  }

  /// `Pizza`
  String get Pizza {
    return Intl.message(
      'Pizza',
      name: 'Pizza',
      desc: '',
      args: [],
    );
  }

  /// `Koshary`
  String get Koshary {
    return Intl.message(
      'Koshary',
      name: 'Koshary',
      desc: '',
      args: [],
    );
  }

  /// `PanneerMomos`
  String get PanneerMomos {
    return Intl.message(
      'PanneerMomos',
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
