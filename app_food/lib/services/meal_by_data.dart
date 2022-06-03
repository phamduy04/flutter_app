import 'package:app_food/models/MealsByCategorie_Model.dart';
import 'package:dio/dio.dart';

class MealByData {
  static Future<List<MealsByCategorie>> getListCategorie(
      String CategoryName) async {
    List<MealsByCategorie> listData = [];
    Response response = await Dio().get(
        'https://www.themealdb.com/api/json/v1/1/filter.php?c=$CategoryName');
    var jsonBody = response.data;
    print("data: $jsonBody");
    try {
      if (response.statusCode == 200) {
        var jsonList = jsonBody['meals'];
        for (var json in jsonList) {
          MealsByCategorie mealsByCategorie = MealsByCategorie.fromJson(json);
          listData.add(mealsByCategorie);
        }
      }
    } catch (e) {
      print("error: " + e.toString());
    }
    return listData;
  }

  static Future<List<MealsByCategorie>> getListIntegration(
      String CategoryName) async {
    List<MealsByCategorie> listData = [];
    Response response = await Dio().get(
        'http://www.themealdb.com/api/json/v1/1/filter.php?i=$CategoryName');
    var jsonBody = response.data;
    print("data: $jsonBody");
    try {
      if (response.statusCode == 200) {
        var jsonList = jsonBody['meals'];
        for (var json in jsonList) {
          MealsByCategorie mealsByCategorie = MealsByCategorie.fromJson(json);
          listData.add(mealsByCategorie);
        }
      }
    } catch (e) {
      print("error: " + e.toString());
    }
    return listData;
  }

 static Future<List<MealsByCategorie>> GetMealByArea(String AreaName) async {
    Response response = await Dio()
        .get('https://www.themealdb.com/api/json/v1/1/filter.php?a=$AreaName');

    return (response.data['meals'] as List)
        .map((e) => MealsByCategorie.fromJson(e))
        .toList();
  }

}
