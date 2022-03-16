
import 'package:app_letter_boxd/models/firm_model.dart';
import 'package:app_letter_boxd/models/reviews_model.dart';
import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/resources/widgets/home/film_popular_item.dart';
import 'package:app_letter_boxd/resources/widgets/home/reviews_item.dart';
import 'package:app_letter_boxd/resources/widgets/item_drawer.dart';
import 'package:app_letter_boxd/views/detail/movie_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1F1D36"),
      key: scaffoldKey,
      drawer: MyDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: SvgPicture.asset(iconMenu),
                    onPressed: () => scaffoldKey.currentState?.openDrawer(),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(cast1))),
                      ),
                      Positioned(
                          top: 0,
                          right: 2,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                color: HexColor("#EC2626"),
                                shape: BoxShape.circle),
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Hello, Duy!",
                style: txtBold(18, Colors.white),
              ),
              Text(
                "Review or track film you’ve watched...",
                style: txtRegular(14, Colors.white),
              ),
              const SizedBox(
                height: 21,
              ),
              Text(
                "Popular Films This Month",
                style: txtSemiBold(16, Colors.white),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                height: 82,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: listFirm.map((firm) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const MoviePage()));
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 22),
                            padding: const EdgeInsets.only(right: 8),
                            width: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(firm.imageUrl)))),
                      );
                    }).toList()),
              ),
              const SizedBox(
                height: 27,
              ),
              Text(
                "Popular Lists This Month",
                style: txtSemiBold(16, Colors.white),
              ),
              const SizedBox(
                height: 17,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children:const [
                  FilmPopularItem(imageUrl1: lifeMovie4,
                   imageUrl2: lifeMovie3, 
                   imageUrl3: lifeMovie2, 
                   imageUrl4: lifeMovie1, 
                   title: "Life-Changing Movies", 
                   imageAuthor: author1,
                    nameAuthor: "Alejandro",
                     numberFavorite: "500",
                      numberMessage: "79"),
                  FilmPopularItem(imageUrl1: thrillerMovie4,
                   imageUrl2: thrillerMovie3, 
                   imageUrl3: thrillerMovie2, 
                   imageUrl4: thrillerMovie1, 
                   title: "100 Best Thriller Movies", 
                   imageAuthor: author2,
                    nameAuthor: "Wendy",
                     numberFavorite: "887",
                      numberMessage: "123"),
                  FilmPopularItem(imageUrl1: confortMovie4,
                   imageUrl2: confortMovie3, 
                   imageUrl3: confortMovie2, 
                   imageUrl4: confortMovie1, 
                   title: "Comfort Movies To Watch", 
                   imageAuthor: author3,
                    nameAuthor: "Ruth",
                     numberFavorite: "522",
                      numberMessage: "37"),         
               ],
             ),
               const SizedBox(
                height: 23,
              ),
              Text(
                "Recent Friends' Review",
                style: txtSemiBold(16, Colors.white),
              ),
              const SizedBox(
                height: 18,
              ),  
              SizedBox(width: double.infinity,
               child: ListView(
                  shrinkWrap:  true, 
                   children: listReviews.map(( review){
                      return ReviewsItem(reviewsModel: review);
                   }).toList(),
               ),
              )    
            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawer(
    BuildContext context,
  ) {
    return Drawer(
      child: Container(
        color: HexColor("#1F1D36"),
        child: ListView(
          padding: const EdgeInsets.only(top: 30),
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(cast1))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phạm Duy",
                            style: txtSemiBold(16, HexColor("#E9A6A6")),
                          ),
                          Text(
                            "@phamduy04",
                            style: txtRegular(
                                12, HexColor("#FFFFFF").withOpacity(0.5)),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: HexColor("#9C4A8B"))),
                        child: Center(
                          child: Text(
                            "500 Followers",
                            style: txtSemiBold(10, Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: HexColor("#9C4A8B"))),
                        child: Center(
                          child: Text(
                            "420 Followings",
                            style: txtSemiBold(10, Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ItemDrawer(iconUrl: iconHome, title: "Home", onTap: () {}),
            ItemDrawer(iconUrl: iconFilm, title: "Films", onTap: () {}),
            ItemDrawer(iconUrl: icondiary, title: "Diary", onTap: () {}),
            ItemDrawer(iconUrl: iconreviewer, title: "Reviews", onTap: () {}),
            ItemDrawer(
                iconUrl: iconWatchList, title: "Watchlist", onTap: () {}),
            ItemDrawer(iconUrl: iconSolidList, title: "Lists", onTap: () {}),
            ItemDrawer(iconUrl: iconLike, title: "Likes", onTap: () {}),
            const SizedBox(
              height: 55,
            ),
            ItemDrawer(iconUrl: iconLogout, title: "Logout", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
