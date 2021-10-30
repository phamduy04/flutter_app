import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_chat.dart';

class RecentChat extends StatefulWidget {
  const RecentChat({Key? key}) : super(key: key);

  @override
  _RecentChatState createState() => _RecentChatState();
}

class _RecentChatState extends State<RecentChat> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, index) {
            final ColorText =
                chats[index].unRead ? Colors.black38 : Colors.black;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ScreenChat(users: favorites[index])));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(children: [
                      Stack(
                        alignment: Alignment(0.8, 1.2),
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(chats[index].sender.imageUrl),
                            radius: 35,
                          ),
                          chats[index].sender.status
                              ? Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 20,
                                )
                              : Text('')
                        ],
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chats[index].sender.name,
                              style: TextStyle(
                                fontSize: 18,
                                color: ColorText,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(chats[index].content,
                              style: TextStyle(
                                fontSize: 18,
                                color: ColorText,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    Text(chats[index].time,
                        style: TextStyle(
                          fontSize: 18,
                          color: ColorText,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
