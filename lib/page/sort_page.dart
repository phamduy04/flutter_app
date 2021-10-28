import 'package:flutter/material.dart';
import 'package:flutter_demo/data/cars.dart';
import 'package:flutter_demo/widget/value_widget.dart';

class SortPage extends StatefulWidget {
  const SortPage({Key? key}) : super(key: key);

  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    final sortedCars = cars..sort((a, b) => a.compareTo(b));
    return Center(
      child: ValuesWidget(title: 'Sorted Cars', values: sortedCars),
    );
  }
}
