import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_news.dart';
import 'package:messager_ui/screen/screen_phone_book.dart';
import 'package:messager_ui/screen/screen_home.dart';
import 'package:messager_ui/widget/bottom_tab_bar.dart';
import 'package:messager_ui/widget/people.dart';
import 'package:messager_ui/widget/private_profile.dart';
import 'package:messager_ui/widget/profile_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Message UI',
        theme: ThemeData(primaryColor: Colors.white),
        home: BottomTabBarProfile());
    //home: ProfileUser());
  }
}
