import 'package:doctor_consultant_ui/constants.dart';
import 'package:doctor_consultant_ui/screen/auth/screen_sign_up.dart';
import 'package:doctor_consultant_ui/screen/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthcare - Doctor Consultation App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor,
          textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              padding: EdgeInsets.all(defaultPadding),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: textFieldBorder,
            enabledBorder: textFieldBorder,
            focusedBorder: textFieldBorder,
          ),
        ),
        //home: ScreenHome());
        home: ScreenSignUp());
  }
}
