import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormSignUp extends StatelessWidget {
  final GlobalKey formKey;
  FormSignUp({Key? key, required this.formKey}) : super(key: key);
  late String _user, _email, _phone, _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFiledName(
          title: 'Username',
        ),
        TextFormField(
          onSaved: (user) => _user = user!,
          validator: RequiredValidator(errorText: "Username is required"),
          decoration: new InputDecoration(
            hintText: 'Enter the Username',
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.blue)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFiledName(
          title: 'Email',
        ),
        TextFormField(
          onSaved: (email) => _email = email!,
          validator: EmailValidator(errorText: 'Use a valid email!'),
          decoration: new InputDecoration(
            hintText: 'Enter the Email',

            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.blue)),
            //fillColor: Colors.green
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFiledName(
          title: 'Phone',
        ),
        TextFormField(
          onSaved: (phone) => _phone = phone!,
          validator: RequiredValidator(errorText: "Phone number is required"),
          decoration: new InputDecoration(
            hintText: 'Enter the Phone',

            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.blue)),
            //fillColor: Colors.green
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFiledName(
          title: 'Password',
        ),
        TextFormField(
          onSaved: (pass) => _password = pass!,
          decoration: new InputDecoration(
            hintText: '********',

            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.blue)),
            //fillColor: Colors.green
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFiledName(
          title: 'Confirm Password',
        ),
        TextFormField(
          validator: (pass) =>
              MatchValidator(errorText: "Password do not  match")
                  .validateMatch(pass!, _password),
          decoration: new InputDecoration(
            hintText: '*******',

            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.blue)),
            //fillColor: Colors.green
          ),
        ),
      ],
    ));
  }
}

class TextFiledName extends StatelessWidget {
  final String title;
  const TextFiledName({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
    );
  }
}
