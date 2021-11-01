import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/model/recomends_plant.dart';
import 'package:plant_app/screen/screen_detail.dart';

class RecomentPlants extends StatefulWidget {
  const RecomentPlants({Key? key, required this.title, required this.size})
      : super(key: key);
  final String title;
  final Size size;
  @override
  _RecomentPlantsState createState() => _RecomentPlantsState();
}

class _RecomentPlantsState extends State<RecomentPlants> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.4,
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
            height: widget.size.height * 0.4 - 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recomendsPlants.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScrenDetail(
                                  size: widget.size,
                                  recomendsPlant: recomendsPlants[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                          width: widget.size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                recomendsPlants[index].ImageUrl,
                                height: 150,
                                fit: BoxFit.fill,
                                width: widget.size.width,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(recomendsPlants[index].title,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                            )),
                                        Text(
                                            '\$${recomendsPlants[index].price.toString()}',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.green,
                                            ))
                                      ],
                                    ),
                                    Text(recomendsPlants[index].country,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.greenAccent,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
