import 'package:amazon_ui/models/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({
    Key? key,
  }) : super(key: key);

  @override
  _ScreenCartState createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30,
              color: Colors.black,
            )),
        title: Text(
          'Shopping Cart ${cart.length}',
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  leading: Image.asset(
                    cart[index].imageUrl,
                    height: 100,
                    width: 120,
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    cart[index].name,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'x1',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  trailing: Text(
                    '\$${cart[index].price}',
                    style: TextStyle(color: Colors.orange, fontSize: 18),
                  ),
                ));
          }),
    );
  }
}
