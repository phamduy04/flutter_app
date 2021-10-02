import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widget/category_selector.dart';
import 'package:chat_ui/widget/favorite_contact.dart';
import 'package:chat_ui/widget/recent_chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              iconSize: 30.0,
            ),
            title: Container(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            elevation: 0.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 30.0,
              ),
            ],
            backgroundColor: Theme.of(context).primaryColor),
        body: Column(
          children: [
            const CategorySelector(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: Column(
                  children: [
                    FavoriteContact(),
                    RecentChat(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
