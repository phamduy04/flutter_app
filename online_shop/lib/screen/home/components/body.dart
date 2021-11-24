import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screen/home/components/item_card.dart';

import 'category.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Women',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Category(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.75,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, index) {
                  return ItemCard(product: products[index]);
                }),
          ),
        ],
      ),
    );
  }
}
