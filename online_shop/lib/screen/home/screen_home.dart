import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/screen/home/components/body.dart';
import 'package:online_shop/screen/home/components/category.dart';

class ScreeenHome extends StatefulWidget {
  const ScreeenHome({Key? key}) : super(key: key);

  @override
  _ScreeenHomeState createState() => _ScreeenHomeState();
}

class _ScreeenHomeState extends State<ScreeenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              )),
        ],
      ),
      body: Body(),
    );
  }
}
