import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ReviewerButtonItem extends StatelessWidget {
  const ReviewerButtonItem({ Key? key,
    required this.IconUrl,
     required this.title,
      required this.onPressed
   }) : super(key: key);
   final String IconUrl;
    final String title;
   final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
                   width: 140, 
                     margin: const EdgeInsets.only(bottom: 10),
                   child: ElevatedButton( 
                     style: ElevatedButton.styleFrom(
                      primary: HexColor("#E9A6A6"),
                      shape: RoundedRectangleBorder( 
                          borderRadius: BorderRadius.circular(7)
                      ),
                      padding:const  EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    ),                   
                     onPressed: onPressed,
                      child: Row(
                        children: [
                          SvgPicture.asset(IconUrl,color: Colors.black,),
                          const SizedBox(width: 10,),
                          Text(title,
                           style: txtRegular(12, Colors.black),
                          ),
                        ],
                      )),
                 );
  }
}