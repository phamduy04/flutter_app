import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:messager_ui/screen/screen_chat.dart';
import 'package:messager_ui/screen/screen_profile.dart';
import 'package:messager_ui/screen/screen_search_users.dart';
import 'package:messager_ui/widget/favorite_contact.dart';
import 'package:messager_ui/widget/recent_chats.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenProfile()));
            },
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/duy.png'),
                )
              ],
            ),
          ),
        ),
        title: Text(
          'Chat',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.pencil_circle_fill,
                    size: 20,
                    color: Colors.black,
                  )),
            ],
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                print('you clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScreenSearchUsers()));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Tìm kiếm',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          FavoriteContact(),
          RecentChat()
        ],
      ),
    );
  }
}
