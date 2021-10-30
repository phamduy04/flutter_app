import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_chat.dart';
import 'package:messager_ui/widget/favorite_contact.dart';

class ScreenSearchUsers extends StatefulWidget {
  const ScreenSearchUsers({Key? key}) : super(key: key);

  @override
  _ScreenSearchUsersState createState() => _ScreenSearchUsersState();
}

class _ScreenSearchUsersState extends State<ScreenSearchUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
            )),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Tìm kiếm',
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tìm kiếm gần đây',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('CHỈNH',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text('SỬA',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          FavoriteContact(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gợi ý',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
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
          )
        ],
      ),
    );
  }
}
