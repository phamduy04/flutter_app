import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/model/featured_plants.dart';
import 'package:plant_app/widget/featured_plants.dart';
import 'package:plant_app/widget/recoment_plant.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/menu.svg'))),
      body: ListView(children: [
        Column(
          children: [
            Container(
                height: size.height * 0.2,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.2 - 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Hi. Uishopy!',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/logo.png',
                                  height: 50,
                                  width: 50,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 54,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 50,
                                  color: Colors.white.withOpacity(0.23),
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Search..',
                                  suffixIcon: Icon(Icons.search,
                                      size: 30, color: Colors.black38)),
                            ),
                          ),
                        ))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            RecomentPlants(title: 'RecomentPlant', size: size),
            SizedBox(
              height: 10,
            ),
            FeaturedPlants(title: 'Featured Plants', size: size),
          ],
        ),
      ]),
    );
  }
}
