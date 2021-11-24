import 'package:doctor_consultant_ui/screen/auth/componets/form_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({Key? key}) : super(key: key);

  @override
  _ScreenSignUpState createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            fit: BoxFit.cover,
          ),
          Center(
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create Account',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text('Already have an account?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text('Sign In?',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormSignUp(
                      formKey: _formKey,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Sign up form is done
                                  // It saved our inputs
                                  _formKey.currentState!.save();
                                }
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text(
                                'Sign up',
                                style: TextStyle(fontSize: 18),
                              ))),
                    ),
                  ],
                ),
              ),
            )),
          )
        ],
      ),
    );
  }
}
