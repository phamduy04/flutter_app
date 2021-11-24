import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui/models/RecipeBundel.dart';
import 'package:recipe_ui/screen/home/components/category.dart';
import 'package:recipe_ui/screen/home/components/item_recipe.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          iconSize: 30,
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
          ),
          color: Colors.black,
        ),
        title: SvgPicture.asset('assets/icons/logo.svg'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Category(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: recipeBundles.length,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisCount: 1,
                    childAspectRatio: 1.65),
                itemBuilder: (BuildContext context, index) {
                  return ItemRecipe(recipeBundle: recipeBundles[index]);
                }),
          ))
        ],
      )),
    );
  }
}
