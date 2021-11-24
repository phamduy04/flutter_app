import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui/constants.dart';
import 'package:recipe_ui/screen/user/components/profile_menu_item.dart';

class ScreenUser extends StatefulWidget {
  const ScreenUser({Key? key}) : super(key: key);

  @override
  _ScreenUserState createState() => _ScreenUserState();
}

class _ScreenUserState extends State<ScreenUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, //16
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 240,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(color: kPrimaryColor),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 140,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.5, color: Colors.white),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage(
                                    'assets/images/pic.png',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Text('John Doe',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black38)),
                        Text('John Doe, @gmail.com',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38))
                      ],
                    ),
                  )
                ],
              ),
            ),
            ProfileMenuItem()
          ],
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
