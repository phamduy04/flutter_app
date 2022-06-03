
import 'package:app_food/models/ingredient.dart';
import 'package:app_food/screens/home/home_screen.dart';
import 'package:app_food/services/ingredient_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
          FutureProvider<List<Ingredient>>(create: (context) => IngredientData.getListIngredient(), initialData: [])
       ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen()),
    );
  }
}
