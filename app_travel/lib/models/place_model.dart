import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class PlaceModel{
  String? imageTour;
  String? place;
  String? numberPlace;
  PlaceModel({
    required this.imageTour, required this.place,required this.numberPlace
  });
}
List<PlaceModel>listTourCard=[
    PlaceModel(imageTour: too1, place:  S.current.TourPlace1, numberPlace: S.current.TourNumberPlace1),
    PlaceModel(imageTour: too2, place:  S.current.TourPlace2, numberPlace: S.current.TourNumberPlace2),
    PlaceModel(imageTour: too3, place:  S.current.TourPlace3, numberPlace: S.current.TourNumberPlace3),
    PlaceModel(imageTour: too4, place:  S.current.TourPlace4, numberPlace: S.current.TourNumberPlace4),
    PlaceModel(imageTour: too5, place:  S.current.TourPlace5, numberPlace: S.current.TourNumberPlace5),
];