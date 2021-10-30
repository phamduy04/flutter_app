import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:messager_ui/widget/account_profile.dart';

import 'package:messager_ui/widget/content_profile.dart';
import 'package:messager_ui/widget/regime_profile.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({
    Key? key,
  }) : super(key: key);
  @override
  _ScreenProfileState createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  bool _values = false;
  Color selection = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Tôi',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/duy.png'),
                              radius: 50,
                            ),
                          ],
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Phạm duy',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                ContentProfile(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Tùy chọn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          RegimeProfiles(),
          Container(
            height: 58,
            padding: EdgeInsets.only(left: 5),
            child: SwitchListTile(
              title: const Text(
                'Bong bóng chat',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              value: _values,
              onChanged: (bool value) {
                setState(() {
                  _values = value;
                });
              },
              secondary: const Icon(
                CupertinoIcons.dot_square_fill,
                size: 35,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            height: 78,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Icon(CupertinoIcons.arrow_down_to_line,
                    color: Colors.blue, size: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Cập nhật ứng dụng',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Tài khoản',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          AccountProfile(),
        ],
      ),
    );
  }
}
