import 'package:app_food/models/Meal_Model.dart';
import 'package:app_food/screens/detail/components/Item_Box.dart';
import 'package:app_food/screens/detail/components/MostWatched_Box.dart';
import 'package:app_food/screens/detail/mealby_integration_screen.dart';
import 'package:app_food/services/Meal_Data.dart';
import 'package:app_food/services/meal_by_data.dart';
import 'package:flutter/material.dart';

import '../home/components/ads_box.dart';
import 'components/Food_Box.dart';
import 'components/item_button.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key, required this.ID}) : super(key: key);
  final String ID;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: FutureBuilder<List<MealModel>>(
          future: MealData.GetMealByID(ID),
          builder: (context, snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              List<dynamic> Ingredient = snapshot.hasData
                  ? [
                      snapshot.data![0].strIngredient1,
                      snapshot.data![0].strIngredient2,
                      snapshot.data![0].strIngredient3,
                      snapshot.data![0].strIngredient4,
                      snapshot.data![0].strIngredient5,
                      snapshot.data![0].strIngredient6,
                      snapshot.data![0].strIngredient7,
                      snapshot.data![0].strIngredient8,
                      snapshot.data![0].strIngredient9,
                      snapshot.data![0].strIngredient10,
                      snapshot.data![0].strIngredient11,
                      snapshot.data![0].strIngredient12,
                      snapshot.data![0].strIngredient1,
                      snapshot.data![0].strIngredient14,
                      snapshot.data![0].strIngredient15,
                      snapshot.data![0].strIngredient16,
                      snapshot.data![0].strIngredient17,
                      snapshot.data![0].strIngredient18,
                      snapshot.data![0].strIngredient19,
                      snapshot.data![0].strIngredient20,
                    ]
                  : [];
              List<dynamic> Measure = snapshot.hasData
                  ? [
                      snapshot.data![0].strMeasure1,
                      snapshot.data![0].strMeasure2,
                      snapshot.data![0].strMeasure3,
                      snapshot.data![0].strMeasure4,
                      snapshot.data![0].strMeasure5,
                      snapshot.data![0].strMeasure6,
                      snapshot.data![0].strMeasure7,
                      snapshot.data![0].strMeasure8,
                      snapshot.data![0].strMeasure9,
                      snapshot.data![0].strMeasure10,
                      snapshot.data![0].strMeasure11,
                      snapshot.data![0].strMeasure12,
                      snapshot.data![0].strMeasure13,
                      snapshot.data![0].strMeasure14,
                      snapshot.data![0].strMeasure15,
                      snapshot.data![0].strMeasure16,
                      snapshot.data![0].strMeasure17,
                      snapshot.data![0].strMeasure18,
                      snapshot.data![0].strMeasure19,
                      snapshot.data![0].strMeasure20,
                    ]
                  : [];
              List<MealModel> listData = snapshot.data!;
              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: snapshot.hasData
                                    ? DecorationImage(
                                        image: NetworkImage(
                                          listData[0].strMealThumb!,
                                        ),
                                        fit: BoxFit.cover)
                                    : null,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              listData[0].strMeal!,
                                              maxLines: 5,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          ItemButton(
                                            MealTitle: listData[0].strMeal!,
                                            BrowsLink:
                                                listData[0].strSource != null &&
                                                        listData[0]
                                                            .strSource!
                                                            .isNotEmpty
                                                    ? listData[0].strSource!
                                                    : '',
                                            isThereBrowserlink:
                                                listData[0].strSource != null &&
                                                        listData[0]
                                                            .strSource!
                                                            .isNotEmpty
                                                    ? true
                                                    : false,
                                            shareLink: listData[0].strYoutube!,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) => MealsByCategotrieScreen(
                                                          categoryName:
                                                              listData[0]
                                                                  .strCategory
                                                                  .toString(),
                                                          future: MealByData
                                                              .getListCategorie(
                                                                  listData[0]
                                                                      .strCategory
                                                                      .toString()))));
                                            },
                                            child: Text(
                                              listData[0].strCategory!,
                                              style: const TextStyle(
                                                color: Color(0xffC3211A),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '-',
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MealsByCategotrieScreen(
                                                            categoryName:
                                                                listData[0]
                                                                    .strArea
                                                                    .toString(),
                                                            future: MealByData
                                                                .GetMealByArea(
                                                                    listData[0]
                                                                        .strArea
                                                                        .toString()))),
                                              );
                                            },
                                            child: Text(
                                              snapshot.data![0].strArea!,
                                              style: const TextStyle(
                                                color: Color(0xffC3211A),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        listData[0].strInstructions!,
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Divider(
                                          height: 1,
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Ingredient & Measure',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: 20,
                                        itemBuilder: (context, index) {
                                          return Ingredient[index] != "" &&
                                                  Ingredient[index] != null
                                              ? Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 5.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        ' - ' +
                                                            Ingredient[index],
                                                        style: TextStyle(
                                                          color: Colors
                                                              .grey.shade800,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Measure[index] != "" &&
                                                              Measure[index] !=
                                                                  null
                                                          ? Text(
                                                              ': ' +
                                                                  Measure[
                                                                      index],
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                              ),
                                                            )
                                                          : Container(),
                                                    ],
                                                  ),
                                                )
                                              : Container();
                                        },
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      listData[0].strTags != null
                                          ? Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Divider(
                                                      height: 1,
                                                      color:
                                                          Colors.grey.shade200,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const Text(
                                                    'Tags',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    ' - ' +
                                                        listData[0].strTags!,
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade700,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ])
                                          : Container()
                                    ],
                                  ),
                                ),
                                FoodBox(
                                    FirstChar: 'b',
                                    BoxTitle: 'Related Meals',
                                    onPressed: () {}),
                                const ItemsBox(),
                                FoodBox(
                                    FirstChar: 'l',
                                    BoxTitle: 'Top Reviews',
                                    onPressed: () {}),
                                AdsBox(revere: false),
                                const MostWatchedBox()
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: 50,
                      left: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent),
                          child: const Center(
                              child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                        ),
                      ))
                ],
              );
            }
            return Container();
          }),
    );
  }
}
