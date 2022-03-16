import 'package:app_letter_boxd/resources/constants.dart';

class FunctionDrawer{
   final String iconUrl;
   final String title;
   FunctionDrawer({required this.iconUrl, required this.title});

   List<FunctionDrawer> listFunction=[
      FunctionDrawer(iconUrl: iconHome, title: "Home"),
      FunctionDrawer(iconUrl: iconFilm, title: "Films"),
      FunctionDrawer(iconUrl: icondiary, title: "Diary"),
      FunctionDrawer(iconUrl: iconreviewer, title: "Reviews"),
      FunctionDrawer(iconUrl: iconWatchList, title: "Watchlist"),
      FunctionDrawer(iconUrl: iconList, title: "Lists"),
      FunctionDrawer(iconUrl: iconLike, title: "Likes")
   ];
}