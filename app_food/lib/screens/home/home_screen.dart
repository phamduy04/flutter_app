import 'package:app_food/screens/category/category_list.dart';
import 'package:app_food/screens/detail/components/Food_Box.dart';
import 'package:app_food/screens/detail/components/Item_Box.dart';
import 'package:app_food/screens/home/components/ads_box.dart';
import 'package:app_food/screens/home/components/ingredient_list.dart';
import 'package:app_food/screens/popular/SeeAllMeal_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../category/Categorie_Screen.dart';
import 'components/CroupPhoto_Box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 25),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.location_on_outlined),
                            Text("hai hau , nam dinh")
                          ],
                        ),
                        const Text(
                          "Hello Pham duy",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/user.png'))),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AdsBox(revere: false),
            const SizedBox(
              height: 20,
            ),
            const IngredientList(),
            CategoryList(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const CategorieScreen()));
            }),
            FoodBox(
                FirstChar: 'c',
                BoxTitle: 'Popular Meals',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SeeAllMeals(
                                ScreenTitle: 'Popular Search',
                                firstChar: 'c',
                              )));
                }),
            FoodBox(
                FirstChar: 'm',
                BoxTitle: 'Recent Search',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SeeAllMeals(
                                ScreenTitle: 'Recent Search',
                                firstChar: 'm',
                              )));
                }),
            GroupPhotoBox(
              BoxTitle: 'Our Teams',
              onPressed: () {
                print('Go To Photo Screen');
              },
            ),
            ItemsBox()
          ],
        ),
      ),
    );
  }
}
