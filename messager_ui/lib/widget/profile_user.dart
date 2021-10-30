import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messager_ui/models/user_model.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({
    Key? key,
  }) : super(key: key);
  // final Users users;
  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.black,
              ))
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
