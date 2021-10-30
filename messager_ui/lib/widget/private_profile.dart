import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/user_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messager_ui/widget/content_profile.dart';
import 'package:messager_ui/widget/favorite_contact.dart';

class PrivateProfile extends StatefulWidget {
  const PrivateProfile({Key? key, required this.users}) : super(key: key);
  final Users users;
  @override
  _PrivateProfileState createState() => _PrivateProfileState();
}

class _PrivateProfileState extends State<PrivateProfile> {
  double _sizeIcon = 30.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment(0.8, 1.2),
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.users.imageUrl),
                  radius: 20,
                ),
                widget.users.status
                    ? Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 15,
                      )
                    : Text('')
              ],
            ),
          ),
          title: Text(
            widget.users.name,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.ellipsisV,
                      color: Colors.black26,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.black26,
                    )),
              ],
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.users.imageUrl), fit: BoxFit.cover)),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  width: size.width,
                  height: 50,
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: 'Giử tin nhắn...',
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.smiley_fill,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.orangeAccent,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.smiley_fill,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.deepOrange,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.smiley_fill,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.orange,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.smiley_fill,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.orangeAccent,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.thumb_up_alt_rounded,
                          size: _sizeIcon,
                        ),
                        iconSize: 25.0,
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
