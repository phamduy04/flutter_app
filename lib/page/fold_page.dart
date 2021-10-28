import 'package:flutter/material.dart';
import 'package:flutter_demo/data/bikes.dart';
import 'package:flutter_demo/widget/value_widget.dart';

class FoldPage extends StatefulWidget {
  @override
  _FoldPageState createState() => _FoldPageState();
}

class _FoldPageState extends State<FoldPage> {
  @override
  Widget build(BuildContext context) {
    final initialValue = 0;
    final totalHorsePower = bikes.fold<int>(
      initialValue,
      (previous, value) => previous + value.horsepower,
    );

    return Center(
      child: ValueWidget(
        title: 'Total Horsepower',
        value: '$totalHorsePower',
      ),
    );
  }
}
