import 'package:flutter/cupertino.dart';
import 'package:online_shop/models/product.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 180,
            // width: 180,
            // //color: products[0].color,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.product.color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(widget.product.imageUrl),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.product.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '\$${widget.product.price.toString()}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
