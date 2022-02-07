import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class ExploreCategory {
  String? image;
  String? location;
  String? country;
  ExploreCategory(
      {required this.image, required this.location, required this.country});
}
List<ExploreCategory> listExploreCategory=[
   ExploreCategory(image: mountain1, location: S.current.ExploreCountry1, country:  S.current.ExploreCountry1),
   ExploreCategory(image: mountain2, location: S.current.Explorelocation2, country: S.current.ExploreCountry2),
   ExploreCategory(image: mountain3, location: S.current.Explorelocation3, country: S.current.ExploreCountry3),
   ExploreCategory(image: mountain4, location: S.current.Explorelocation4, country:  S.current.ExploreCountry4),
   ExploreCategory(image: mountain5, location: S.current.Explorelocation5, country: S.current.ExploreCountry5),
   ExploreCategory(image: mountain6, location: S.current.Explorelocation6, country: S.current.ExploreCountry6)
];