import 'package:flutter/rendering.dart';

class RecomendsPlant {
  final String ImageUrl;
  final String title;
  final String country;
  final double price;
  RecomendsPlant(
      {required this.ImageUrl,
      required this.title,
      required this.country,
      required this.price});
}

final List<RecomendsPlant> recomendsPlants = [
  RecomendsPlant(
      ImageUrl: 'assets/images/image_1.png',
      title: 'Samantha',
      country: 'Russia',
      price: 440),
  RecomendsPlant(
      ImageUrl: 'assets/images/image_2.png',
      title: 'Angelica',
      country: 'Russia',
      price: 440),
  RecomendsPlant(
      ImageUrl: 'assets/images/image_3.png',
      title: 'Samantha',
      country: 'Russia',
      price: 440),
];
