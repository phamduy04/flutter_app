import 'package:flutter/material.dart';
import 'package:flutter_demo/data/bikes.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allHorsepower = bikes.map((bike) {
      final horsepower = bike.horsepower.toString();
      return Text(
        horsepower,
        style: TextStyle(fontSize: 20, color: Colors.red),
      );
    }).toList();
    final allName = bikes.map((e) {
      final name = e.name;
      return Text(
        name,
        style: TextStyle(fontSize: 20, color: Colors.blueAccent),
      );
    }).toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'All Bike\'s Horsepower',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            ...allHorsepower,
          ],
        ),
        Column(
          children: [
            Text(
              'All Bike\'s name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            ...allName
          ],
        ),
      ],
    );
  }
}
