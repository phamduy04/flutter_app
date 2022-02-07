import 'package:app_travel/resources/containts.dart';

class ImageModel {
  final String? image;
  final bool? islike;
  ImageModel({required this.image, required this.islike});
}

List<ImageModel> listImage = [
  ImageModel(image: mountain1, islike: false),
  ImageModel(image: mountain2, islike: true),
  ImageModel(image: mountain3, islike: true),
  ImageModel(image: mountain4, islike: false),
  ImageModel(image: mountain5, islike: true),
  ImageModel(image: mountain6, islike: false),
  ImageModel(image: too1, islike: false),
  ImageModel(image: too2, islike: true),
  ImageModel(image: too3, islike: false),
  ImageModel(image: too4, islike: true),
  ImageModel(image: too5, islike: false),
  ImageModel(image: forest, islike: true),
];
