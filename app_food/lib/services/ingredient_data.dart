import 'dart:convert';

import 'package:app_food/models/ingredient.dart';
import 'package:dio/dio.dart';

class IngredientData {
  static Future<List<Ingredient>> getListIngredient() async {
    List<Ingredient> listIngredient=[];
    Response response = await Dio()
        .get('https://www.themealdb.com/api/json/v1/1/list.php?i=list');
    var jsonBody=response.data;
   print(jsonBody);
    try{
       if(response.statusCode==200){
          var jsonList= jsonBody['meals'];
          for (var json in jsonList) {
             Ingredient ingredient= Ingredient.fromJson(json);
              listIngredient.add(ingredient);
          }
       }else {
        throw Exception('Failed to load ingredients');
       }
    }catch(e){
      print('error: '+e.toString());
    }
     return listIngredient;
    // for (int i = 0; i < response.data['meals'].length; i++) {
    //   IngredientTitleList.add(response.data['meals'][i]['strIngredient']);
    // }
    // print("data: $IngredientTitleList");
    // return IngredientTitleList;
  }
}
