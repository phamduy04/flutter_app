import 'package:app_food/models/ingredient.dart';
import 'package:app_food/screens/detail/mealby_integration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/meal_by_data.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ingredientList = Provider.of<List<Ingredient>>(context);
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
      ),
      width: double.infinity,
      child: ingredientList == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: 43,
              child: ListView.builder(
                  itemCount: ingredientList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Ingredient value = ingredientList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MealsByCategotrieScreen(
                                      categoryName:
                                          value.strIngredient.toString(),
                                      future: MealByData.getListIntegration(
                                          value.strIngredient.toString()),
                                    )));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        margin:
                            const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.greenAccent),
                        child: Center(
                            child: Text(
                          value.strIngredient.toString(),
                          style: const TextStyle(color: Colors.black),
                        )),
                      ),
                    );
                  }),
            ),
    );
  }
}
