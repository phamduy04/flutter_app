import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/screen/screen_home.dart';
import 'package:messager_ui/screen/screen_news.dart';
import 'package:messager_ui/screen/screen_phone_book.dart';

class BottomTabBarProfile extends StatefulWidget {
  const BottomTabBarProfile({Key? key}) : super(key: key);

  @override
  _BottomTabBarProfileState createState() => _BottomTabBarProfileState();
}

class _BottomTabBarProfileState extends State<BottomTabBarProfile> {
  int _selectIndex = 0;
  static const List<Widget> _Widgetoptions = [
    ScreenHome(),
    ScreenPhoneBook(),
    ScreenNews()
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
        child: _Widgetoptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black26,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_2_fill,
                color: Colors.black26,
              ),
              label: 'Danh bạ',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bubble_left_bubble_right_fill,
                  color: Colors.black26),
              label: 'Tin',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectIndex,
          selectedItemColor: Colors.blue,
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
