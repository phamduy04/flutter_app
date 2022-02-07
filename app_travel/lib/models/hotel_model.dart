import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class HotelModel{
   final String image;
   final String  name;
   HotelModel({required this.image, required this.name});
}
List<HotelModel> listHotel=[
  HotelModel(image: v1, name: S.current.ExHotelName1),
  HotelModel(image: v2, name: S.current.ExHotelName2),
  HotelModel(image: v3, name: S.current.ExHotelName3),
  HotelModel(image: v4, name: S.current.ExHotelName4),
  HotelModel(image: v5, name: S.current.ExHotelName5),
  HotelModel(image: v6, name: S.current.ExHotelName6)
];