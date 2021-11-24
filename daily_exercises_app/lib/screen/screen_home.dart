import 'package:daily_exercises_app/constant.dart';
import 'package:daily_exercises_app/widget/bottom_nav_bar.dart';
import 'package:daily_exercises_app/widget/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 52,
                        width: 52,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5CEB8),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset('assets/icons/menu.svg'),
                      ),
                    ),
                    Text(
                      'Good Morning \n Shishir',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchBar(),
                    Expanded(
                        child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: [
                        CategoryCard(
                            title: 'Diet Recommendation',
                            imageUrl: 'assets/icons/Hamburger.svg'),
                        CategoryCard(
                            title: 'Kegel Exercises',
                            imageUrl: 'assets/icons/Excrecises.svg'),
                        CategoryCard(
                            title: 'Meditation',
                            imageUrl: 'assets/icons/Meditation.svg'),
                        CategoryCard(
                            title: 'Yoga', imageUrl: 'assets/icons/yoga.svg')
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: bottomNavBar());
  }
}
