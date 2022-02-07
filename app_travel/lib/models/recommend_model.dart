import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class RecommendModel{
   final String image;
   final  String country;
   final String place;
   final String price;
   RecommendModel({ required this.image, required this.country, required this.place, required this.price});
}
List<RecommendModel> listRecommend=[
   RecommendModel(image: h1, country:S.current.RecommendCountry1, place: S.current.RecommendPlace1, price: "95"),
   RecommendModel(image: h2, country:S.current.RecommendCountry2, place: S.current.RecommendPlace2, price: "105"),
   RecommendModel(image: h3, country:S.current.RecommendCountry3, place: S.current.RecommendPlace3, price:  "97")
];