import 'package:app_travel/models/tour_model.dart';
import 'package:app_travel/resources/explore/explore_tour.dart';
import 'package:flutter/material.dart';

class ListTourCard extends StatelessWidget {
  const ListTourCard({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: width * 0.5,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: listTour.map((value) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ExploreTour()));
              },
              child: Stack(
                children: [
                  Container(
                    width: width * 0.35,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(value.imageTour!),
                            fit: BoxFit.cover)),
                  ),
                  const Positioned(
                      top: 15,
                      right: 25,
                      child: Icon(
                        Icons.location_on,
                        size: 24,
                        color: Colors.teal,
                      )),
                  Positioned(
                      left: 15,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.place!,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            value.numberPlace!,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            );
          }).toList(),
        ));
  }
}
