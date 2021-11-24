import 'package:daily_exercises_app/constant.dart';
import 'package:daily_exercises_app/screen/screen_home.dart';
import 'package:daily_exercises_app/widget/bottom_nav_bar.dart';
import 'package:daily_exercises_app/widget/seasion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenDetail extends StatefulWidget {
  const ScreenDetail({Key? key}) : super(key: key);

  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: kBlueColor,
                  image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth,
                  )),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meditation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "3-10 MIN Course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: size.width * .6, // it just take 60% of total width
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(width: size.width * 0.6, child: SearchBar()),
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      SessionCard(
                        seassionNum: 1,
                        isDone: true,
                      ),
                      SessionCard(
                        seassionNum: 2,
                      ),
                      SessionCard(
                        seassionNum: 3,
                      ),
                      SessionCard(
                        seassionNum: 4,
                      ),
                      SessionCard(
                        seassionNum: 5,
                      ),
                      SessionCard(
                        seassionNum: 6,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Meditation",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  Container(
                    height: 90,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text("Start your deepen you practice")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
        bottomNavigationBar: bottomNavBar());
  }
}
