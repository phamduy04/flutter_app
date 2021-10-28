import 'package:flutter/material.dart';
import 'package:flutter_demo/data/bikes.dart';
import 'package:flutter_demo/widget/value_widget.dart';

class EveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isHighHorsepower = bikes.every((bike) => bike.horsepower >= 200);

    return Center(
      child: ValueWidget(
        title: 'All High Horsepower?',
        value: isHighHorsepower.toString(),
      ),
    );
  }
}
