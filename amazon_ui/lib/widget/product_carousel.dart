import 'dart:developer';

import 'package:amazon_ui/models/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({Key? key, required this.title, required this.products})
      : super(key: key);
  final String title;
  final List<Product> products;
  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  _buildProductCard(int index) {
    return Container(
      width: 170,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white12, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 2.0),
              blurRadius: 6.0,
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            widget.products[index].imageUrl,
            height: 100,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Text(widget.products[index].name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(
            '\$${widget.products[index].price}',
            style: TextStyle(color: Colors.orange),
          ),
          SizedBox(
            height: 5,
          ),
          FlatButton(
            padding: EdgeInsets.all(4.0),
            onPressed: () => print('Add to cart'),
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (BuildContext context, index) {
                  return _buildProductCard(index);
                }),
          )
        ],
      ),
    );
  }
}
