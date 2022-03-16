import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/views/home_page.dart';
import 'package:app_letter_boxd/views/profile_page.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  static const List<Widget> _widgetoptions = [
      HomePage(),
     Text("Film"),
     Text("Notification"),
     ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: _widgetoptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: CustomNavigationBar(
          items: [
            CustomNavigationBarItem(
              icon:SvgPicture.asset(iconHome,color: HexColor("#FFFFFF").withOpacity(0.5))
              ),
             CustomNavigationBarItem(
              icon: SvgPicture.asset(icon,color: HexColor("#FFFFFF").withOpacity(0.5))
              ),
             CustomNavigationBarItem(
              icon: SvgPicture.asset(iconNoti,color: HexColor("#FFFFFF").withOpacity(0.5))
              ),
             CustomNavigationBarItem(
              icon: SvgPicture.asset(iconUser,color: HexColor("#FFFFFF").withOpacity(0.5))
              ),      
          ],
          backgroundColor: HexColor("#1F1D36"),
          currentIndex: _selectIndex,
          iconSize: 35,
          selectedColor: HexColor("#E9A6A6"),
          onTap: _onItemTapped,
          elevation: 5)
    );
  }
  
}