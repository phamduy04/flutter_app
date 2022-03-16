import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemDrawer extends StatelessWidget {
  const ItemDrawer({ Key? key,
    required this.iconUrl,
     required this.title, 
      required this.onTap
   }) : super(key: key);
   final String iconUrl;
   final String title;
   final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
       leading: SvgPicture.asset(iconUrl,color: Colors.white,)  ,
       title: Text(title,
        style: txtSemiBold(16,HexColor("#FFFFFF").withOpacity(0.5)),
       ),
       onTap: onTap
    );
  }
}