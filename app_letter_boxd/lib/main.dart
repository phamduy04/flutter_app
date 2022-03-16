
import 'package:app_letter_boxd/views/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: 'Open Sans'
      ),
      debugShowCheckedModeBanner: false,
      home:const  OnboardingPage()
    );
  }
}

