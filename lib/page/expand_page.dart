import 'package:flutter/material.dart';
import 'package:flutter_demo/data/bikes.dart';
import 'package:flutter_demo/widget/value_widget.dart';

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesMoreHorsepower = bikes
        .expand((bike) => [bike.horsepower, bike.horsepower + 100])
        .toList();

    return Center(
      child: ValueWidget(
        title: 'Expanded List',
        value: bikesMoreHorsepower.join(', '),
      ),
    );
  }
}
