import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/factorite_model.dart';
import 'package:app_travel/resources/widgets/favorite_card.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<String> listFavorite = [
    S.current.Tour,
    S.current.Destination,
    S.current.Hotel,
    S.current.Activities,
    S.current.Restaurant,
    S.current.Lodging
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
   
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  S.current.Favorite,
                  style:
                      TextStyle(color:Theme.of(context).primaryColor, fontSize: width * 0.035),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.current.ThatYouSave,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: width,
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listFavorite.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 10, right: 10, bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: index == selectedIndex
                                    ? Colors.teal
                                    : Colors.grey,
                              ),
                              child: Center(
                                child: Text(
                                  listFavorite[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        })),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: width,
                  child: ListView(
                      shrinkWrap: true,
                      children: listFavorites.map((favorite) {
                        return FavoriteCard(
                            favorite: favorite, width: width, height: height);
                      }).toList()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
