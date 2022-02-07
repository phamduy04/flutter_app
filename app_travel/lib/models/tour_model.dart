import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class TourModel {
  String? imageTour;
  String? place;
  String? numberPlace;
  TourModel(
      {required this.imageTour,
      required this.place,
      required this.numberPlace});
}

List<TourModel> listTour = [
  TourModel(
      imageTour: mountain,
      place: S.current.Mountain,
      numberPlace: S.current.Place),
  TourModel(
      imageTour: beach, place: S.current.Beach, numberPlace: S.current.Place),
  TourModel(
      imageTour: forest, place: S.current.Forest, numberPlace: S.current.Place),
  TourModel(
      imageTour: landscape,
      place: S.current.Landscape,
      numberPlace: S.current.Place),
];

// List<TourModel> listTourCard = [
//   TourModel(
//       imageTour: too1,
//       place: S.current.TourPlace1,
//       numberPlace: S.current.TourNumberPlace1),
//   TourModel(
//       imageTour: too2,
//       place: S.current.TourPlace2,
//       numberPlace: S.current.TourNumberPlace2),
//   TourModel(
//       imageTour: too3,
//       place: S.current.TourPlace3,
//       numberPlace: S.current.TourNumberPlace3),
//   TourModel(
//       imageTour: too4,
//       place: S.current.TourPlace4,
//       numberPlace: S.current.TourNumberPlace4),
//   TourModel(
//       imageTour: too5,
//       place: S.current.TourPlace5,
//       numberPlace: S.current.TourNumberPlace5)
// ];
