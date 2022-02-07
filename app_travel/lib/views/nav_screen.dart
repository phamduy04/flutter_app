
import 'package:app_travel/views/pages/explore_page.dart';
import 'package:app_travel/views/pages/favorite_page.dart';
import 'package:app_travel/views/pages/home_page.dart';
import 'package:app_travel/views/pages/notification_page.dart';
import 'package:app_travel/views/pages/profile_page.dart';
import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({ Key? key }) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _page=0;
   final screens = [
    const HomePage(),
    const FavoritePage(),
    const ExlorePage(),
    const NotificationPage(),
    const ProfilePage()
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
     double width= size.width;

    return Scaffold(
        body: screens[_page],
        bottomNavigationBar: CurvedNavigationBar(
           key: _bottomNavigationKey,
           color: Colors.teal,
           buttonBackgroundColor:  Colors.teal,
            backgroundColor: Colors.transparent,
             animationDuration:  const Duration(milliseconds: 600),
             animationCurve: Curves.easeInOut,
             onTap: (index){
                setState(() {                
                  _page=index;
                });
             },
             letIndexChange: (index) => true,
              index: 0,
             items: [
                     Icon(
                        Icons.home,
                        size: width * 0.07,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.bookmark,
                        size: width * 0.07,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.location_on,
                        size: width * 0.07,
                        color: Colors.white,
                      ),
                      Badge(
                        badgeContent: const Text(' '),
                        child: Icon(
                          Icons.notifications,
                          size: width * 0.07,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.person,
                        size: width * 0.07,
                        color: Colors.white,
                      ),
             ], 
        ),
    );
  }
}