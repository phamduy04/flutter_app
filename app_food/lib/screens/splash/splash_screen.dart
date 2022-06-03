import 'dart:async';

import 'package:app_food/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( const Duration(seconds: 2), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC3211A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset('assets/images/user.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'WelcoMeal ',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Bello',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
