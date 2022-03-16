import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class AuthTextInput extends StatelessWidget {
  const AuthTextInput({ Key? key,
   required this.controller,
    required this.obscureText,
    required this.keyboardType,
    required this.hintText,
     required this.imageUrl
   }) : super(key: key);
   final TextEditingController controller;
   final bool obscureText;
   final TextInputType keyboardType;
   final String hintText;
   final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  Container(
                         width: 243,
                          height: 40,
                           margin: const EdgeInsets.only(top: 14),
                          decoration: BoxDecoration(
                             color: HexColor("#C4C4C4").withOpacity(0.35),
                             borderRadius: BorderRadius.circular(30)
                          ),
                         child: TextField(
                           controller: controller,
                           obscureText:obscureText ,
                           keyboardType:keyboardType,
                            decoration: InputDecoration(
                               prefixIcon: Container(
                                  width:  16, 
                                   height:  16, 
                                    decoration:const  BoxDecoration(
                                       shape: BoxShape.circle
                                    ),
                                 child: Center(
                                   child: SvgPicture.asset(imageUrl)),
                               ),
                                hintText:hintText,
                                hintStyle: txtRegular(13, HexColor("#FFFFFF").withOpacity(0.5)),
                                 border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                            ),
                         ),
                       );
  }
}