import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  final List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses"
  ];
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      print('you clicked');
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 18,
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.black26,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.transparent,
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
