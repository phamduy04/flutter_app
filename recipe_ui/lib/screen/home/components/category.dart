import 'package:flutter/material.dart';
import 'package:recipe_ui/constants.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectIndex = 0;
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, index) {
              return buildItemCategory(index);
            }));
  }

  Widget buildItemCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.symmetric(
            horizontal: 20, //20
            vertical: 5, //5
          ),
          decoration: BoxDecoration(
            color:
                selectIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            categories[index],
            style: TextStyle(
              fontSize: 20,
              color:
                  selectIndex == index ? Color(0xFF7286A5) : Color(0xFFC2C2B5),
            ),
          )),
    );
  }
}
