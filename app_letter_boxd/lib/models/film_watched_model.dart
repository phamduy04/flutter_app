import 'package:app_letter_boxd/resources/constants.dart';

class FilmWathedModel{
   final String imageUrl;
   final String stars;
   FilmWathedModel({required this.imageUrl, required this.stars});
}
List<FilmWathedModel> listFimWatched=[
  FilmWathedModel(imageUrl: filmRecent1, stars: iconStar1),
  FilmWathedModel(imageUrl: filmRecent2, stars: iconStar2),
  FilmWathedModel(imageUrl: filmRecent3, stars: iconStar3),
  FilmWathedModel(imageUrl: filmRecent4, stars: iconStar4),
  FilmWathedModel(imageUrl: filmRecent5, stars: iconStar5)
];