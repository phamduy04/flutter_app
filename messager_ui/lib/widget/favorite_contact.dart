import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_chat.dart';

class FavoriteContact extends StatefulWidget {
  const FavoriteContact({Key? key}) : super(key: key);

  @override
  _FavoriteContactState createState() => _FavoriteContactState();
}

class _FavoriteContactState extends State<FavoriteContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: favorites.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                print('you clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ScreenChat(users: favorites[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
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
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        favorites[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
