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

  /// `Hi`
  String get Hi {
    return Intl.message(
      'Hi',
      name: 'Hi',
      desc: '',
      args: [],
    );
  }

  /// `Wellcome`
  String get wellCome {
    return Intl.message(
      'Wellcome',
      name: 'wellCome',
      desc: '',
      args: [],
    );
  }

  /// `pham duy`
  String get UserName {
    return Intl.message(
      'pham duy',
      name: 'UserName',
      desc: '',
      args: [],
    );
  }

  /// `SIGN UP`
  String get SignUp {
    return Intl.message(
      'SIGN UP',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Lets's Join Us`
  String get Lets {
    return Intl.message(
      'Lets\'s Join Us',
      name: 'Lets',
      desc: '',
      args: [],
    );
  }

  /// ` First Name`
  String get FirstName {
    return Intl.message(
      ' First Name',
      name: 'FirstName',
      desc: '',
      args: [],
    );
  }

  /// `LastName`
  String get LastName {
    return Intl.message(
      'LastName',
      name: 'LastName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Search Place, Hotel, Tour etc.`
  String get Seach {
    return Intl.message(
      'Search Place, Hotel, Tour etc.',
      name: 'Seach',
      desc: '',
      args: [],
    );
  }

  /// `Mountain`
  String get Mountain {
    return Intl.message(
      'Mountain',
      name: 'Mountain',
      desc: '',
      args: [],
    );
  }

  /// `Beach`
  String get Beach {
    return Intl.message(
      'Beach',
      name: 'Beach',
      desc: '',
      args: [],
    );
  }

  /// `Forest`
  String get Forest {
    return Intl.message(
      'Forest',
      name: 'Forest',
      desc: '',
      args: [],
    );
  }

  /// `Landscape`
  String get Landscape {
    return Intl.message(
      'Landscape',
      name: 'Landscape',
      desc: '',
      args: [],
    );
  }

  /// `70 Place`
  String get Place {
    return Intl.message(
      '70 Place',
      name: 'Place',
      desc: '',
      args: [],
    );
  }

  /// `TODAY`
  String get ToDay {
    return Intl.message(
      'TODAY',
      name: 'ToDay',
      desc: '',
      args: [],
    );
  }

  /// `Where are you doing?`
  String get Question {
    return Intl.message(
      'Where are you doing?',
      name: 'Question',
      desc: '',
      args: [],
    );
  }

  /// `Africa`
  String get Africa {
    return Intl.message(
      'Africa',
      name: 'Africa',
      desc: '',
      args: [],
    );
  }

  /// `Australia`
  String get Australia {
    return Intl.message(
      'Australia',
      name: 'Australia',
      desc: '',
      args: [],
    );
  }

  /// `Maldives`
  String get Maldives {
    return Intl.message(
      'Maldives',
      name: 'Maldives',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get Japan {
    return Intl.message(
      'Japan',
      name: 'Japan',
      desc: '',
      args: [],
    );
  }

  /// `Laster`
  String get Laster {
    return Intl.message(
      'Laster',
      name: 'Laster',
      desc: '',
      args: [],
    );
  }

  /// `Popular Destinations`
  String get PopularDestinations {
    return Intl.message(
      'Popular Destinations',
      name: 'PopularDestinations',
      desc: '',
      args: [],
    );
  }

  /// `Province No 1, Nepal`
  String get location {
    return Intl.message(
      'Province No 1, Nepal',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Highest Mountain in the world`
  String get destination1 {
    return Intl.message(
      'Highest Mountain in the world',
      name: 'destination1',
      desc: '',
      args: [],
    );
  }

  /// `Middle of a Beautiful Lake Tour`
  String get destination2 {
    return Intl.message(
      'Middle of a Beautiful Lake Tour',
      name: 'destination2',
      desc: '',
      args: [],
    );
  }

  /// `Charming Underwater Park`
  String get destination3 {
    return Intl.message(
      'Charming Underwater Park',
      name: 'destination3',
      desc: '',
      args: [],
    );
  }

  /// `Down the Beauty of the Island`
  String get destination4 {
    return Intl.message(
      'Down the Beauty of the Island',
      name: 'destination4',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get Day {
    return Intl.message(
      'Day',
      name: 'Day',
      desc: '',
      args: [],
    );
  }

  /// `Add to plan`
  String get AddToPlan {
    return Intl.message(
      'Add to plan',
      name: 'AddToPlan',
      desc: '',
      args: [],
    );
  }

  /// `RECOMMENDED`
  String get Recommend {
    return Intl.message(
      'RECOMMENDED',
      name: 'Recommend',
      desc: '',
      args: [],
    );
  }

  /// `For You`
  String get ForYou {
    return Intl.message(
      'For You',
      name: 'ForYou',
      desc: '',
      args: [],
    );
  }

  /// `Underwater Tourism`
  String get Recommend1 {
    return Intl.message(
      'Underwater Tourism',
      name: 'Recommend1',
      desc: '',
      args: [],
    );
  }

  /// `The Pinnacle of Courage`
  String get Recommend2 {
    return Intl.message(
      'The Pinnacle of Courage',
      name: 'Recommend2',
      desc: '',
      args: [],
    );
  }

  /// `Cliff Top Lodging with a Pool`
  String get Recommend3 {
    return Intl.message(
      'Cliff Top Lodging with a Pool',
      name: 'Recommend3',
      desc: '',
      args: [],
    );
  }

  /// `The Best Ocean Waves`
  String get Recommend4 {
    return Intl.message(
      'The Best Ocean Waves',
      name: 'Recommend4',
      desc: '',
      args: [],
    );
  }

  /// `Night Culinary Tour`
  String get Recommend5 {
    return Intl.message(
      'Night Culinary Tour',
      name: 'Recommend5',
      desc: '',
      args: [],
    );
  }

  /// `Beautiful and Cool Inn`
  String get Recommend6 {
    return Intl.message(
      'Beautiful and Cool Inn',
      name: 'Recommend6',
      desc: '',
      args: [],
    );
  }

  /// `Explore Mountain`
  String get ExploreMountain {
    return Intl.message(
      'Explore Mountain',
      name: 'ExploreMountain',
      desc: '',
      args: [],
    );
  }

  /// `Mountain Peak Red Sky`
  String get Explorelocation1 {
    return Intl.message(
      'Mountain Peak Red Sky',
      name: 'Explorelocation1',
      desc: '',
      args: [],
    );
  }

  /// `Australia`
  String get ExploreCountry1 {
    return Intl.message(
      'Australia',
      name: 'ExploreCountry1',
      desc: '',
      args: [],
    );
  }

  /// `Mountain of Cloud Tops`
  String get Explorelocation2 {
    return Intl.message(
      'Mountain of Cloud Tops',
      name: 'Explorelocation2',
      desc: '',
      args: [],
    );
  }

  /// `Nepal`
  String get ExploreCountry2 {
    return Intl.message(
      'Nepal',
      name: 'ExploreCountry2',
      desc: '',
      args: [],
    );
  }

  /// `Mountain Valley Layered`
  String get Explorelocation3 {
    return Intl.message(
      'Mountain Valley Layered',
      name: 'Explorelocation3',
      desc: '',
      args: [],
    );
  }

  /// `Vietnam`
  String get ExploreCountry3 {
    return Intl.message(
      'Vietnam',
      name: 'ExploreCountry3',
      desc: '',
      args: [],
    );
  }

  /// `Twin Pine Mountain`
  String get Explorelocation4 {
    return Intl.message(
      'Twin Pine Mountain',
      name: 'Explorelocation4',
      desc: '',
      args: [],
    );
  }

  /// `America`
  String get ExploreCountry4 {
    return Intl.message(
      'America',
      name: 'ExploreCountry4',
      desc: '',
      args: [],
    );
  }

  /// `Bromo Crater Mountain`
  String get Explorelocation5 {
    return Intl.message(
      'Bromo Crater Mountain',
      name: 'Explorelocation5',
      desc: '',
      args: [],
    );
  }

  /// `Indonesia`
  String get ExploreCountry5 {
    return Intl.message(
      'Indonesia',
      name: 'ExploreCountry5',
      desc: '',
      args: [],
    );
  }

  /// `Mountain Rock Peak`
  String get Explorelocation6 {
    return Intl.message(
      'Mountain Rock Peak',
      name: 'Explorelocation6',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get ExploreCountry6 {
    return Intl.message(
      'Japan',
      name: 'ExploreCountry6',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get Explore {
    return Intl.message(
      'Explore',
      name: 'Explore',
      desc: '',
      args: [],
    );
  }

  /// `South Africa`
  String get SouthAfrica {
    return Intl.message(
      'South Africa',
      name: 'SouthAfrica',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipisic elit. Expedita fuga illo quam qui placeat incidunt quidem, magnam placeat qui.`
  String get DescriptionCountry {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipisic elit. Expedita fuga illo quam qui placeat incidunt quidem, magnam placeat qui.',
      name: 'DescriptionCountry',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get BookNow {
    return Intl.message(
      'Book Now',
      name: 'BookNow',
      desc: '',
      args: [],
    );
  }

  /// `Explore Too`
  String get ExploreToo {
    return Intl.message(
      'Explore Too',
      name: 'ExploreToo',
      desc: '',
      args: [],
    );
  }

  /// `Hotels`
  String get TourPlace1 {
    return Intl.message(
      'Hotels',
      name: 'TourPlace1',
      desc: '',
      args: [],
    );
  }

  /// `98 Hotels`
  String get TourNumberPlace1 {
    return Intl.message(
      '98 Hotels',
      name: 'TourNumberPlace1',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get TourPlace2 {
    return Intl.message(
      'Restaurants',
      name: 'TourPlace2',
      desc: '',
      args: [],
    );
  }

  /// `210 Restaurants`
  String get TourNumberPlace2 {
    return Intl.message(
      '210 Restaurants',
      name: 'TourNumberPlace2',
      desc: '',
      args: [],
    );
  }

  /// `Tours`
  String get TourPlace3 {
    return Intl.message(
      'Tours',
      name: 'TourPlace3',
      desc: '',
      args: [],
    );
  }

  /// `1040 Tours`
  String get TourNumberPlace3 {
    return Intl.message(
      '1040 Tours',
      name: 'TourNumberPlace3',
      desc: '',
      args: [],
    );
  }

  /// `Lodging`
  String get TourPlace4 {
    return Intl.message(
      'Lodging',
      name: 'TourPlace4',
      desc: '',
      args: [],
    );
  }

  /// `140 Lodging`
  String get TourNumberPlace4 {
    return Intl.message(
      '140 Lodging',
      name: 'TourNumberPlace4',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get TourPlace5 {
    return Intl.message(
      'Activities',
      name: 'TourPlace5',
      desc: '',
      args: [],
    );
  }

  /// `1400 Activities`
  String get TourNumberPlace5 {
    return Intl.message(
      '1400 Activities',
      name: 'TourNumberPlace5',
      desc: '',
      args: [],
    );
  }

  /// `Hotel`
  String get Hotel {
    return Intl.message(
      'Hotel',
      name: 'Hotel',
      desc: '',
      args: [],
    );
  }

  /// `Explore Hotels`
  String get ExploreHotels {
    return Intl.message(
      'Explore Hotels',
      name: 'ExploreHotels',
      desc: '',
      args: [],
    );
  }

  /// `National Hotel`
  String get ExHotelName1 {
    return Intl.message(
      'National Hotel',
      name: 'ExHotelName1',
      desc: '',
      args: [],
    );
  }

  /// `Natural Resort`
  String get ExHotelName2 {
    return Intl.message(
      'Natural Resort',
      name: 'ExHotelName2',
      desc: '',
      args: [],
    );
  }

  /// `Classic Resort`
  String get ExHotelName3 {
    return Intl.message(
      'Classic Resort',
      name: 'ExHotelName3',
      desc: '',
      args: [],
    );
  }

  /// `Hundred Hotel & Resort`
  String get ExHotelName4 {
    return Intl.message(
      'Hundred Hotel & Resort',
      name: 'ExHotelName4',
      desc: '',
      args: [],
    );
  }

  /// `Brother Hotel`
  String get ExHotelName5 {
    return Intl.message(
      'Brother Hotel',
      name: 'ExHotelName5',
      desc: '',
      args: [],
    );
  }

  /// `Airport Hotel & Resort`
  String get ExHotelName6 {
    return Intl.message(
      'Airport Hotel & Resort',
      name: 'ExHotelName6',
      desc: '',
      args: [],
    );
  }

  /// `Night`
  String get Night {
    return Intl.message(
      'Night',
      name: 'Night',
      desc: '',
      args: [],
    );
  }

  /// `Highest Mountain in the world`
  String get HighestMountainInTheWorld {
    return Intl.message(
      'Highest Mountain in the world',
      name: 'HighestMountainInTheWorld',
      desc: '',
      args: [],
    );
  }

  /// `All Reviews`
  String get AllReviews {
    return Intl.message(
      'All Reviews',
      name: 'AllReviews',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get Days {
    return Intl.message(
      'Days',
      name: 'Days',
      desc: '',
      args: [],
    );
  }

  /// `John Doe and 4,5K reviewed this`
  String get Reviewed {
    return Intl.message(
      'John Doe and 4,5K reviewed this',
      name: 'Reviewed',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci itaque autem, vitae fugiat eveniet. Eos consequuntur soluta, consectetur aspernatur, hic iusto aliquid repudiandae veritatis deleniti provident explicabo modi ipsum!\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam dolores, cumque ullam`
  String get DescriptionTravel {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci itaque autem, vitae fugiat eveniet. Eos consequuntur soluta, consectetur aspernatur, hic iusto aliquid repudiandae veritatis deleniti provident explicabo modi ipsum!\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam dolores, cumque ullam',
      name: 'DescriptionTravel',
      desc: '',
      args: [],
    );
  }

  /// `Pictures`
  String get Pictures {
    return Intl.message(
      'Pictures',
      name: 'Pictures',
      desc: '',
      args: [],
    );
  }

  /// `Related Destinations`
  String get RelatedDestinations {
    return Intl.message(
      'Related Destinations',
      name: 'RelatedDestinations',
      desc: '',
      args: [],
    );
  }

  /// `FACVORITE`
  String get Favorite {
    return Intl.message(
      'FACVORITE',
      name: 'Favorite',
      desc: '',
      args: [],
    );
  }

  /// `That You Save`
  String get ThatYouSave {
    return Intl.message(
      'That You Save',
      name: 'ThatYouSave',
      desc: '',
      args: [],
    );
  }

  /// `Tour`
  String get Tour {
    return Intl.message(
      'Tour',
      name: 'Tour',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get Destination {
    return Intl.message(
      'Destination',
      name: 'Destination',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get Activities {
    return Intl.message(
      'Activities',
      name: 'Activities',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant`
  String get Restaurant {
    return Intl.message(
      'Restaurant',
      name: 'Restaurant',
      desc: '',
      args: [],
    );
  }

  /// `Lodging`
  String get Lodging {
    return Intl.message(
      'Lodging',
      name: 'Lodging',
      desc: '',
      args: [],
    );
  }

  /// `Highest Mountain in the world`
  String get FavoriteDes1 {
    return Intl.message(
      'Highest Mountain in the world',
      name: 'FavoriteDes1',
      desc: '',
      args: [],
    );
  }

  /// `Middle of Beautiful Lake Tour`
  String get FavoriteDes2 {
    return Intl.message(
      'Middle of Beautiful Lake Tour',
      name: 'FavoriteDes2',
      desc: '',
      args: [],
    );
  }

  /// `Charming Underwater Park`
  String get FavoriteDes3 {
    return Intl.message(
      'Charming Underwater Park',
      name: 'FavoriteDes3',
      desc: '',
      args: [],
    );
  }

  /// `Charming Sunset Dots`
  String get FavoriteDes4 {
    return Intl.message(
      'Charming Sunset Dots',
      name: 'FavoriteDes4',
      desc: '',
      args: [],
    );
  }

  /// `Explore the world`
  String get ExploreTheWorld {
    return Intl.message(
      'Explore the world',
      name: 'ExploreTheWorld',
      desc: '',
      args: [],
    );
  }

  /// `Explore Mountain`
  String get PreviewPlace1 {
    return Intl.message(
      'Explore Mountain',
      name: 'PreviewPlace1',
      desc: '',
      args: [],
    );
  }

  /// `Explore Mountains together around the world`
  String get PreviewDes1 {
    return Intl.message(
      'Explore Mountains together around the world',
      name: 'PreviewDes1',
      desc: '',
      args: [],
    );
  }

  /// `Explore Forest`
  String get PreviewPlace2 {
    return Intl.message(
      'Explore Forest',
      name: 'PreviewPlace2',
      desc: '',
      args: [],
    );
  }

  /// `Explore the Forest through various recreational activities`
  String get PreviewDes2 {
    return Intl.message(
      'Explore the Forest through various recreational activities',
      name: 'PreviewDes2',
      desc: '',
      args: [],
    );
  }

  /// `Explore Beach`
  String get PreviewPlace3 {
    return Intl.message(
      'Explore Beach',
      name: 'PreviewPlace3',
      desc: '',
      args: [],
    );
  }

  /// `The best Beachs & islands to explore`
  String get PreviewDes3 {
    return Intl.message(
      'The best Beachs & islands to explore',
      name: 'PreviewDes3',
      desc: '',
      args: [],
    );
  }

  /// `Recommended Hotel`
  String get RecommendedHotel {
    return Intl.message(
      'Recommended Hotel',
      name: 'RecommendedHotel',
      desc: '',
      args: [],
    );
  }

  /// `South Africa`
  String get RecommendCountry1 {
    return Intl.message(
      'South Africa',
      name: 'RecommendCountry1',
      desc: '',
      args: [],
    );
  }

  /// `National Hotel of Africa`
  String get RecommendPlace1 {
    return Intl.message(
      'National Hotel of Africa',
      name: 'RecommendPlace1',
      desc: '',
      args: [],
    );
  }

  /// `Australia`
  String get RecommendCountry2 {
    return Intl.message(
      'Australia',
      name: 'RecommendCountry2',
      desc: '',
      args: [],
    );
  }

  /// `Little Airport Hotel`
  String get RecommendPlace2 {
    return Intl.message(
      'Little Airport Hotel',
      name: 'RecommendPlace2',
      desc: '',
      args: [],
    );
  }

  /// `Maldivies`
  String get RecommendCountry3 {
    return Intl.message(
      'Maldivies',
      name: 'RecommendCountry3',
      desc: '',
      args: [],
    );
  }

  /// `Panorama Hotel`
  String get RecommendPlace3 {
    return Intl.message(
      'Panorama Hotel',
      name: 'RecommendPlace3',
      desc: '',
      args: [],
    );
  }

  /// `2 Min Ago`
  String get TowMinAgo {
    return Intl.message(
      '2 Min Ago',
      name: 'TowMinAgo',
      desc: '',
      args: [],
    );
  }

  /// `Special offer - Up to 75%`
  String get Noti1 {
    return Intl.message(
      'Special offer - Up to 75%',
      name: 'Noti1',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes1 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes1',
      desc: '',
      args: [],
    );
  }

  /// `Get Flat 20% discount`
  String get Noti2 {
    return Intl.message(
      'Get Flat 20% discount',
      name: 'Noti2',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes2 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes2',
      desc: '',
      args: [],
    );
  }

  /// `Special Offer - Summer Sale`
  String get Noti3 {
    return Intl.message(
      'Special Offer - Summer Sale',
      name: 'Noti3',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes3 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes3',
      desc: '',
      args: [],
    );
  }

  /// `3 DAYS AGO`
  String get ThreeDayAgo {
    return Intl.message(
      '3 DAYS AGO',
      name: 'ThreeDayAgo',
      desc: '',
      args: [],
    );
  }

  /// `Mega Travel Sale`
  String get Noti4 {
    return Intl.message(
      'Mega Travel Sale',
      name: 'Noti4',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes4 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes4',
      desc: '',
      args: [],
    );
  }

  /// `Special Offer - Nature Hotel`
  String get Noti5 {
    return Intl.message(
      'Special Offer - Nature Hotel',
      name: 'Noti5',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes5 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes5',
      desc: '',
      args: [],
    );
  }

  /// `Africa only - Get all Activities`
  String get Noti6 {
    return Intl.message(
      'Africa only - Get all Activities',
      name: 'Noti6',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get NotiDes6 {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'NotiDes6',
      desc: '',
      args: [],
    );
  }

  /// `Brezee Tomsk`
  String get BrezeeTomsk {
    return Intl.message(
      'Brezee Tomsk',
      name: 'BrezeeTomsk',
      desc: '',
      args: [],
    );
  }

  /// `Trips`
  String get Trips {
    return Intl.message(
      'Trips',
      name: 'Trips',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get Favorites {
    return Intl.message(
      'Favorites',
      name: 'Favorites',
      desc: '',
      args: [],
    );
  }

  /// `Photos`
  String get Photos {
    return Intl.message(
      'Photos',
      name: 'Photos',
      desc: '',
      args: [],
    );
  }

  /// `My Trip History`
  String get MyTripHistory {
    return Intl.message(
      'My Trip History',
      name: 'MyTripHistory',
      desc: '',
      args: [],
    );
  }

  /// `My Gallery`
  String get MyGallery {
    return Intl.message(
      'My Gallery',
      name: 'MyGallery',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get Notification {
    return Intl.message(
      'Notification',
      name: 'Notification',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get Help {
    return Intl.message(
      'Help',
      name: 'Help',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get AboutUs {
    return Intl.message(
      'About Us',
      name: 'AboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get LogOut {
    return Intl.message(
      'Logout',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `NewYork`
  String get NewYork {
    return Intl.message(
      'NewYork',
      name: 'NewYork',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get Privacy {
    return Intl.message(
      'Privacy',
      name: 'Privacy',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get Gallery {
    return Intl.message(
      'Gallery',
      name: 'Gallery',
      desc: '',
      args: [],
    );
  }

  /// `PROFILE SETTINGS`
  String get ProfileSetting {
    return Intl.message(
      'PROFILE SETTINGS',
      name: 'ProfileSetting',
      desc: '',
      args: [],
    );
  }

  /// `Update Your Profile`
  String get UpdateYourProfile {
    return Intl.message(
      'Update Your Profile',
      name: 'UpdateYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `New Picture`
  String get NewPictute {
    return Intl.message(
      'New Picture',
      name: 'NewPictute',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get SaveChanges {
    return Intl.message(
      'Save Changes',
      name: 'SaveChanges',
      desc: '',
      args: [],
    );
  }

  /// `ACCOUNT`
  String get Account {
    return Intl.message(
      'ACCOUNT',
      name: 'Account',
      desc: '',
      args: [],
    );
  }

  /// `Profile Settings`
  String get ProfileSet {
    return Intl.message(
      'Profile Settings',
      name: 'ProfileSet',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get AccountSettings {
    return Intl.message(
      'Account Settings',
      name: 'AccountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Manage Password`
  String get ManagePassword {
    return Intl.message(
      'Manage Password',
      name: 'ManagePassword',
      desc: '',
      args: [],
    );
  }

  /// `Other Settings`
  String get OtherSettings {
    return Intl.message(
      'Other Settings',
      name: 'OtherSettings',
      desc: '',
      args: [],
    );
  }

  /// `PUSH NOTIFICATIONS`
  String get PushNoti {
    return Intl.message(
      'PUSH NOTIFICATIONS',
      name: 'PushNoti',
      desc: '',
      args: [],
    );
  }

  /// `Allow Notification Settings`
  String get AllowNoti {
    return Intl.message(
      'Allow Notification Settings',
      name: 'AllowNoti',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, unde velit fuga fugit suscipit quos, veritatis quae incidunt quas numquam corporis harum amet voluptatem est illum blanditiis nesciunt! Dolor modi aperiam odio eligendi, saepe libero non soluta aut exercitationem adipisci eum, voluptates. Consectetur labore quisquam eligendi ratione, consequatur ipsa culpa.`
  String get PrivacyDes {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, unde velit fuga fugit suscipit quos, veritatis quae incidunt quas numquam corporis harum amet voluptatem est illum blanditiis nesciunt! Dolor modi aperiam odio eligendi, saepe libero non soluta aut exercitationem adipisci eum, voluptates. Consectetur labore quisquam eligendi ratione, consequatur ipsa culpa.',
      name: 'PrivacyDes',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get FAQ {
    return Intl.message(
      'FAQ',
      name: 'FAQ',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get HelpCenter {
    return Intl.message(
      'Help Center',
      name: 'HelpCenter',
      desc: '',
      args: [],
    );
  }

  /// `TOP QUESTIONS`
  String get TopQues {
    return Intl.message(
      'TOP QUESTIONS',
      name: 'TopQues',
      desc: '',
      args: [],
    );
  }

  /// `About Account Information`
  String get AboutAccInfor {
    return Intl.message(
      'About Account Information',
      name: 'AboutAccInfor',
      desc: '',
      args: [],
    );
  }

  /// `How to change Email?`
  String get ChangeEmail {
    return Intl.message(
      'How to change Email?',
      name: 'ChangeEmail',
      desc: '',
      args: [],
    );
  }

  /// `How to change Password?`
  String get ChangePassword {
    return Intl.message(
      'How to change Password?',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `FAQ QUESTIONS`
  String get FAQQues {
    return Intl.message(
      'FAQ QUESTIONS',
      name: 'FAQQues',
      desc: '',
      args: [],
    );
  }

  /// `Turn on notification`
  String get TurnOnNoti {
    return Intl.message(
      'Turn on notification',
      name: 'TurnOnNoti',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get AccountSetting {
    return Intl.message(
      'Account Settings',
      name: 'AccountSetting',
      desc: '',
      args: [],
    );
  }

  /// `Update your usename and manage your email`
  String get UpdateInfor {
    return Intl.message(
      'Update your usename and manage your email',
      name: 'UpdateInfor',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message(
      'Sign In',
      name: 'SignIn',
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

  /// `EMAIL NOTIFICATIONS`
  String get EmailNoti {
    return Intl.message(
      'EMAIL NOTIFICATIONS',
      name: 'EmailNoti',
      desc: '',
      args: [],
    );
  }

  /// `Account Activity`
  String get AccAcctivity {
    return Intl.message(
      'Account Activity',
      name: 'AccAcctivity',
      desc: '',
      args: [],
    );
  }

  /// `Recommended for you`
  String get RecommendedForYou {
    return Intl.message(
      'Recommended for you',
      name: 'RecommendedForYou',
      desc: '',
      args: [],
    );
  }

  /// `Travel News`
  String get TravelNews {
    return Intl.message(
      'Travel News',
      name: 'TravelNews',
      desc: '',
      args: [],
    );
  }

  /// `Marketing Preference`
  String get MarketingPreference {
    return Intl.message(
      'Marketing Preference',
      name: 'MarketingPreference',
      desc: '',
      args: [],
    );
  }

  /// `APP NOTIFICATIONS`
  String get APPNoti {
    return Intl.message(
      'APP NOTIFICATIONS',
      name: 'APPNoti',
      desc: '',
      args: [],
    );
  }

  /// `App Filter Update`
  String get AppFilterUpdate {
    return Intl.message(
      'App Filter Update',
      name: 'AppFilterUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Update Automatically`
  String get UpdateAutomatically {
    return Intl.message(
      'Update Automatically',
      name: 'UpdateAutomatically',
      desc: '',
      args: [],
    );
  }

  /// `Vibrate for Notifications`
  String get VibrateNoti {
    return Intl.message(
      'Vibrate for Notifications',
      name: 'VibrateNoti',
      desc: '',
      args: [],
    );
  }

  /// `Favourite Products`
  String get FavouriteProducts {
    return Intl.message(
      'Favourite Products',
      name: 'FavouriteProducts',
      desc: '',
      args: [],
    );
  }

  /// `The theme has been changed successfully`
  String get NotiTheme {
    return Intl.message(
      'The theme has been changed successfully',
      name: 'NotiTheme',
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
      Locale.fromSubtags(languageCode: 'vi'),
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
