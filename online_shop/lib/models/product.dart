import 'package:flutter/material.dart';

class Product {
  final int id, price, size;
  final String imageUrl, title, description;
  final Color color;

  Product(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color});
}

final List<Product> products = [
  Product(
      id: 1,
      imageUrl: 'assets/bag_1.png',
      title: 'Office Code',
      price: 234,
      description: 'dummyText',
      size: 12,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      imageUrl: 'assets/bag_2.png',
      title: 'Belt Bag',
      price: 234,
      description: 'dummyText',
      size: 8,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      imageUrl: 'assets/bag_3.png',
      title: 'Hang Top',
      price: 234,
      description: 'dummyText',
      size: 10,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      imageUrl: 'assets/bag_4.png',
      title: 'Old Fashion',
      price: 234,
      description: 'dummyText',
      size: 11,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      imageUrl: 'assets/bag_5.png',
      title: 'Office Code',
      price: 234,
      description: 'dummyText',
      size: 12,
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      imageUrl: 'assets/bag_5.png',
      title: 'Office Code',
      price: 234,
      description: 'dummyText',
      size: 12,
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
