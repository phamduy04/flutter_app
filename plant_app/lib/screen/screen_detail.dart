import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/model/recomends_plant.dart';

class ScrenDetail extends StatefulWidget {
  const ScrenDetail(
      {Key? key, required this.size, required this.recomendsPlant})
      : super(key: key);
  final Size size;
  final RecomendsPlant recomendsPlant;
  @override
  _ScrenDetailState createState() => _ScrenDetailState();
}

class _ScrenDetailState extends State<ScrenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: widget.size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                  color: Colors.black,
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/logo.png',
                              height: 50,
                              width: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/logo.png',
                              height: 50,
                              width: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/logo.png',
                              height: 50,
                              width: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/logo.png',
                              height: 50,
                              width: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/logo.png',
                              height: 50,
                              width: 50,
                            )),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: widget.size.height * 0.8,
                      width: widget.size.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          image: DecorationImage(
                              image: AssetImage(widget.recomendsPlant.ImageUrl),
                              fit: BoxFit.cover)),
                      alignment: Alignment.center,
                    ),
                    Positioned(
                        right: 15,
                        top: 50,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.ellipsis,
                              size: 30,
                              color: Colors.black,
                            )))
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.recomendsPlant.title,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          )),
                      Text('\$${widget.recomendsPlant.price.toString()}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                          ))
                    ],
                  ),
                  Text(widget.recomendsPlant.country,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                      ))
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: widget.size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
