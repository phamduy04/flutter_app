import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/widgets/notification_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
  
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: width * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              S.current.TowMinAgo,
              style: TextStyle(
                  color: Colors.grey.shade500, fontSize: width * 0.04),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.tag,
                color: Colors.white,
              ),
              text1: S.current.Noti1,
              text2: S.current.NotiDes1,
              badge: true,
            ),
            SizedBox(height: width * 0.04),
            Text(
              S.current.ToDay,
              style: TextStyle(
                  color: Colors.grey.shade500, fontSize: width * 0.04),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.tag,
                color: Colors.white,
              ),
              text1: S.current.Noti2,
              text2: S.current.NotiDes2,
              badge: true,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.sun_haze,
                color: Colors.white,
              ),
              text1: S.current.Noti3,
              text2: S.current.NotiDes3,
              badge: true,
            ),
            SizedBox(height: width * 0.04),
            Text(
              S.current.ThreeDayAgo,
              style: TextStyle(
                  color: Colors.grey.shade500, fontSize: width * 0.04),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.tag,
                color: Colors.white,
              ),
              text1: S.current.Noti4,
              text2: S.current.NotiDes4,
              badge: false,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.bed_double,
                color: Colors.white,
              ),
              text1: S.current.Noti5,
              text2: S.current.NotiDes5,
              badge: false,
            ),
            SizedBox(height: width * 0.04),
            NotificationTile(
              width: width,
              icon: const Icon(
                CupertinoIcons.location,
                color: Colors.white,
              ),
              text1: S.current.Noti6,
              text2: S.current.NotiDes6,
              badge: false,
            ),
            SizedBox(height: width * 0.04),
          ],
        ),
      ),
    ));
  }
}
