import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class PreviewModel{
  final String image;
  final String place;
  final String description;
  PreviewModel({required this.image, required this.place, required this.description});
}
List<PreviewModel> listPreview=[
  PreviewModel(image: mountain, place: S.current.PreviewPlace1, description: S.current.PreviewDes1),
  PreviewModel(image: forest, place: S.current.PreviewPlace2, description: S.current.PreviewDes2),
  PreviewModel(image: beach, place: S.current.PreviewPlace3, description: S.current.PreviewDes3)
];