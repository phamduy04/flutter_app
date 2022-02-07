
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AuthTextInput extends StatelessWidget {
  const AuthTextInput(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      required this.icon,
      this.visible = false,
      this.validator,
      this.textCapitalization = TextCapitalization.none})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool visible;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
          obscureText: visible,
          controller: controller,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          style:const TextStyle( fontSize: 14,color: Colors.black),
          decoration: InputDecoration(
              hintStyle:  TextStyle( fontSize: 14,color: Colors.black.withOpacity(0.62) ),
               border:  UnderlineInputBorder(
                borderSide:  BorderSide(
                    color: HexColor("#02123D"),
                    width: 1,
                    style: BorderStyle.none
                )
              ),        
             suffixIcon:  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(icon,size: 24,)
                  ),
      )),
    );
  }
} 
