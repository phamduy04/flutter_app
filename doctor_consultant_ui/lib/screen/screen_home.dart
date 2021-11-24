import 'package:doctor_consultant_ui/screen/auth/screen_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset("assets/icons/gerda_logo.svg"),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenSignUp()));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF6CD8D1),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 18),
                          ))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 18),
                          ))),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
