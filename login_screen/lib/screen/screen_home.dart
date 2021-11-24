import 'package:flutter/material.dart';
import 'package:login_screen/screen/screen_login.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/anh.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'BAKING LESSONS\n',
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                    TextSpan(
                        text: 'MASTER THE ART OF BAKING',
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ])),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenLogin()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'START LEARNING',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.arrow_forward, size: 30, color: Colors.black)
                      ]),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
