import 'package:flutter/material.dart';
import 'package:future_json_user/page/todo_network_page.dart';
import 'package:future_json_user/page/user_network_page.dart';
import 'package:future_json_user/widget/tabbar_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return TabBarWidget(title: 'Future json demo', tabs: [
      Tab(
        icon: Icon(
          Icons.person,
          size: 30,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.note,
          size: 30,
        ),
      ),
    ], children: [
      UserNetWorkPage(),
      ToDoPage()
    ]);
  }
}
