import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/model/featured_plants.dart';
import 'package:plant_app/screen/screen_detail.dart';

class FeaturedPlants extends StatefulWidget {
  const FeaturedPlants({Key? key, required this.title, required this.size})
      : super(key: key);
  final String title;
  final Size size;
  @override
  _FeaturedPlantsState createState() => _FeaturedPlantsState();
}

class _FeaturedPlantsState extends State<FeaturedPlants> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                ElevatedButton(
                    child: Text("More", style: TextStyle(fontSize: 16)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide.none))),
                    onPressed: () => null)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredPlants.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        width: widget.size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          featuredPlants[index].image,
                          height: 250,
                          width: widget.size.width,
                          fit: BoxFit.fill,
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
