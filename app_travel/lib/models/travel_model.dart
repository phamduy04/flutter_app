import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class TravelModel{
   String? image;
   String? recommend;
   TravelModel({ required this.image, required this.recommend});
}
List<TravelModel> listTravel=[
   TravelModel(image: recommended1, recommend: S.current.Recommend1),
   TravelModel(image: recommended2, recommend: S.current.Recommend2),
   TravelModel(image: recommended3, recommend:S.current.Recommend3),
   TravelModel(image: recommended4, recommend: S.current.Recommend4),
   TravelModel(image: recommended5, recommend: S.current.Recommend5),
   TravelModel(image: recommended6, recommend: S.current.Recommend6),
];