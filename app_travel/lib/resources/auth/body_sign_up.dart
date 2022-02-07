import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/auth/auth_text_input.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodySignUp extends StatefulWidget {
  const BodySignUp({
    Key? key,
    required this.emailEditingController,
    required this.passwordEditingController,
    required this.confirmPasswordEditingController,
    required this.firstNameEditingController,
    required this.lastNameEditingController,
  }) : super(key: key);
  final TextEditingController emailEditingController;
  final TextEditingController passwordEditingController;
  final TextEditingController confirmPasswordEditingController;
  final TextEditingController firstNameEditingController;
  final TextEditingController lastNameEditingController;
  @override
  _BodySignUpState createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.FirstName,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextInput(
                    controller: widget.firstNameEditingController,
                    keyboardType: TextInputType.name,
                    icon: Icons.person,
                  ),
                ],
              )),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.LastName,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextInput(
                    controller: widget.lastNameEditingController,
                    keyboardType: TextInputType.name,
                    icon: Icons.person,
                  ),
                ],
              ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            S.current.Email,
            style: const TextStyle(fontSize: 16),
          ),
          AuthTextInput(
            controller: widget.emailEditingController,
            keyboardType: TextInputType.emailAddress,
            icon: Icons.email_outlined,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            S.current.Password,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          AuthTextInput(
            visible: true,
            controller: widget.passwordEditingController,
            keyboardType: TextInputType.text,
            icon: Icons.lock,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            S.current.ConfirmPassword,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          AuthTextInput(
              visible: true,
              controller: widget.confirmPasswordEditingController,
              keyboardType: TextInputType.text,
              icon: Icons.lock),
        ],
      ),
    );
  }
}
