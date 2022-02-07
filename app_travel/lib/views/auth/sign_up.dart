import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/auth/body_sign_up.dart';
import 'package:app_travel/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController =
      TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 24,
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.current.SignUp,
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: widget.width * 0.035),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: widget.width * 0.01),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.current.Lets,
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: widget.width * 0.06,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    BodySignUp(
                        emailEditingController: emailEditingController,
                        passwordEditingController: passwordEditingController,
                        confirmPasswordEditingController:
                            confirmPasswordEditingController,
                        firstNameEditingController: firstNameEditingController,
                        lastNameEditingController: lastNameEditingController)
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 30,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomePage()));
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: HexColor("#EB1125"),
                shape: BoxShape.circle,
              ),
              child: const Center(
                  child: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 30,
              )),
            ),
          ),
        )
      ],
    );
  }
}
