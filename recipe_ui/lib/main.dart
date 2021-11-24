import 'package:flutter/material.dart';
import 'package:recipe_ui/components/navi_bottom_bar.dart';

import 'package:recipe_ui/screen/home/screen_home.dart';
import 'package:recipe_ui/screen/user/screen_user.dart';

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
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: NaviBottomBar());
  }
}
