import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_chat.dart';
import 'package:messager_ui/screen/screen_profile.dart';
import 'package:messager_ui/widget/people.dart';

class ScreenPhoneBook extends StatefulWidget {
  const ScreenPhoneBook({Key? key}) : super(key: key);

  @override
  _ScreenPhoneBookState createState() => _ScreenPhoneBookState();
}

class _ScreenPhoneBookState extends State<ScreenPhoneBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Danh bạ',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => People()));
              },
              child: Icon(
                Icons.person_pin_rounded,
                color: Colors.black,
              )),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ScreenChat(users: favorites[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment(0.8, 1.2),
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                            radius: 35,
                          ),
                          favorites[index].status
                              ? Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 20,
                                )
                              : Text('')
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          favorites[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
