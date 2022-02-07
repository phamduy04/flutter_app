import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/pages/profile_page/function_card.dart';
import 'package:app_travel/resources/pages/profile_page/gallery_page.dart';
import 'package:app_travel/resources/pages/profile_page/help_page.dart';
import 'package:app_travel/resources/pages/profile_page/language_page.dart';
import 'package:app_travel/resources/pages/profile_page/setting_card.dart';
import 'package:app_travel/resources/pages/profile_page/setting_page.dart';
import 'package:app_travel/resources/pages/profile_page/trip_card.dart';
import 'package:app_travel/views/pages/notification_page.dart';
import 'package:app_travel/resources/pages/profile_page/privacy_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(      
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: width * 0.7,
              width: width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(bgProfile))),
            ),
            const SizedBox(
              height: 20,
            ),
            FunctionCard(width: width),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "35",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05,
                          color: Colors.black),
                    ),
                    Text(
                      S.current.Trips,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05,
                          color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "90",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05,
                          color: Colors.black),
                    ),
                    Text(
                      S.current.Favorite,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05,
                          color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "110",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05,
                          color: Colors.black),
                    ),
                    Text(
                      S.current.Photos,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.MyTripHistory,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: width * 0.055,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TripCard(
                            image: mountain,
                            place: S.current.Mountain,
                            country: S.current.Japan),
                      ),
                      Expanded(
                        child: TripCard(
                            image: beach,
                            place: S.current.Beach,
                            country: S.current.NewYork),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SettingCard(
                      iconData: Icons.photo,
                      title: S.current.MyGallery,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const GalleryPage()));
                      }),
                  SettingCard(
                      iconData: Icons.notifications,
                      title: S.current.Notification,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const NotificationPage()));
                      }),
                  SettingCard(
                      iconData: CupertinoIcons.globe,
                      title: S.current.Language,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LanguagePage()));
                      }),
                  SettingCard(
                      iconData: Icons.notifications,
                      title: S.current.Settings,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SettingPage()));
                      }),
                  SettingCard(
                      iconData: Icons.lock,
                      title: S.current.Privacy,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const PrivacyPage()));
                      }),
                  SettingCard(
                      iconData: Icons.help,
                      title: S.current.Help,
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HelpPage()));
                      }),
                  SettingCard(
                      iconData: CupertinoIcons.info,
                      title: S.current.AboutUs,
                      onpress: () {
                        print("About Us");
                      }),
                  SettingCard(
                      iconData: Icons.logout,
                      title: S.current.LogOut,
                      onpress: () {
                        print("Logout");
                      }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
