import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class FavoriteModel{
  final String image;
  final String description;
  FavoriteModel({required this.image, required this.description});
}
List<FavoriteModel> listFavorites=[
  FavoriteModel(image: favorite1, description:S.current.FavoriteDes1),
  FavoriteModel(image: favorite2, description: S.current.FavoriteDes2),
  FavoriteModel(image: favorite3, description: S.current.FavoriteDes3),
  FavoriteModel(image: favorite4, description: S.current.FavoriteDes4)
];