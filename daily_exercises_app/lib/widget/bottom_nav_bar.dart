import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(title: 'Today', ImageSvg: 'assets/icons/calendar.svg'),
          BottomNavItem(
              title: 'All Exercises', ImageSvg: 'assets/icons/gym.svg'),
          BottomNavItem(
              title: 'Settings', ImageSvg: 'assets/icons/Settings.svg')
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      //color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
            hintText: 'Search',
            border: InputBorder.none),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String ImageSvg;
  const BottomNavItem({Key? key, required this.title, required this.ImageSvg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SvgPicture.asset(ImageSvg),
        SizedBox(
          height: 5,
        ),
        Text(title),
        SizedBox(
          height: 15,
        ),
      ]),
    );
  }
}
