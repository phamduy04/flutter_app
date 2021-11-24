import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_ui/constants.dart';
import 'package:recipe_ui/screen/home/screen_home.dart';
import 'package:recipe_ui/screen/user/screen_user.dart';

class NaviBottomBar extends StatefulWidget {
  const NaviBottomBar({Key? key}) : super(key: key);

  @override
  _NaviBottomBarState createState() => _NaviBottomBarState();
}

class _NaviBottomBarState extends State<NaviBottomBar> {
  int _selectIndex = 0;
  static const List<Widget> _Widgetoptions = [
    ScreenHome(),
    Text('Screen list'),
    Text('Screen camera'),
    ScreenUser()
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
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.square_list,
                color: Colors.black26,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera, color: Colors.black26),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person, color: Colors.black26),
              label: '',
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
