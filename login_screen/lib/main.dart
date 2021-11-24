import 'package:flutter/material.dart';
import 'package:login_screen/screen/screen_home.dart';
import 'package:login_screen/screen/screen_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFF202020)),
        home: ScreenHome());
  }
}
