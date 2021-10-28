import 'package:flutter/material.dart';
import 'package:flutter_demo/data/cars.dart';

class ForEachPage extends StatefulWidget {
  const ForEachPage({Key? key}) : super(key: key);

  @override
  _ForEachPageState createState() => _ForEachPageState();
}

class _ForEachPageState extends State<ForEachPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            onPressed: () {
              cars.forEach((car) {
                print(car);
              });
            },
            child: Text('Call ForEach')),
      ),
    );
  }
}
