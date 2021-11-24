import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  _ScreenLoginState createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
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
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SIGN IN',
                          style: TextStyle(fontSize: 24, color: Colors.white)),
                      Text('SIGN UP',
                          style: TextStyle(fontSize: 16, color: Colors.lime)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              icon: Icon(Icons.alternate_email),
                              hintText: 'Email address'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock), hintText: 'Password'),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundIcon(
                                icon: Icon(FontAwesomeIcons.facebook),
                                color: Color(0xFF202020)),
                            SizedBox(
                              width: 20,
                            ),
                            RoundIcon(
                                icon: Icon(FontAwesomeIcons.twitter),
                                color: Color(0xFF202020)),
                          ],
                        ),
                        RoundIcon(
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.yellow),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}

class RoundIcon extends StatelessWidget {
  final Color color;
  final Icon icon;
  const RoundIcon({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(color: Colors.white, width: 0.5)),
        child: icon);
  }
}
