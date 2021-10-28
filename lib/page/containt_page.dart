import 'package:flutter/material.dart';
import 'package:flutter_demo/data/cars.dart';
import 'package:flutter_demo/widget/value_widget.dart';

class ContaintPage extends StatelessWidget {
  const ContaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasLamborghini = cars.contains('Lamborghini');
    return Center(
        child: hasLamborghini
            ? ValueWidget(title: 'Best Sports Car', value: 'Lamborghini')
            : ValueWidget(title: 'Best Sports Car', value: 'None'));
  }
}
