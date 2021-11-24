import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui/models/RecipeBundel.dart';

class ItemRecipe extends StatelessWidget {
  final RecipeBundle recipeBundle;
  const ItemRecipe({Key? key, required this.recipeBundle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color textcolor = Colors.white;
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeBundle.title,
                    style: TextStyle(color: textcolor, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    recipeBundle.description,
                    style: TextStyle(color: Colors.white24, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildInfoRow(
                      icon: 'assets/icons/pot.svg',
                      text: '${recipeBundle.recipes}   Recipe',
                      textcolor: textcolor),
                  SizedBox(
                    height: 15,
                  ),
                  buildInfoRow(
                      icon: 'assets/icons/chef.svg',
                      text: '${recipeBundle.chefs}   Chefs',
                      textcolor: textcolor)
                ],
              ),
            )),
            AspectRatio(
              aspectRatio: 0.7,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class buildInfoRow extends StatelessWidget {
  final String icon, text;
  const buildInfoRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.textcolor,
  }) : super(key: key);

  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          icon,
          height: 20,
          width: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(text, style: TextStyle(color: textcolor, fontSize: 18)),
      ],
    );
  }
}
