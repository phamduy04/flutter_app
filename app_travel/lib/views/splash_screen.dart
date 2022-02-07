import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/views/nav_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5),(){
       Navigator.of(context).pushAndRemoveUntil(_createRoute(), (route) => false);
    });
    return Scaffold(
       backgroundColor: Colors.teal,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:const <Widget>[
           Center(
             child: Image(
               image: AssetImage(barefootWhite),
                width: 200.0,
                height: 200.0,
             ),
           ),
           Center(
             child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
             ),
           ),
         ],
       ),
    );
  }
}
 Route _createRoute(){
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>const NavScreen(),
       transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin=Offset(0.0, 1.0);
          const end =Offset.zero;
          const curve= Curves.ease;
          var tween= Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return  SlideTransition(
            position: animation.drive(tween),
            child: child ,
            );
         },
      );
 }