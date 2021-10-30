import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/models/user_model.dart';
import 'package:messager_ui/widget/profile_user.dart';

class ScreenChat extends StatefulWidget {
  final Users users;
  const ScreenChat({Key? key, required this.users}) : super(key: key);

  @override
  _ScreenChatState createState() => _ScreenChatState();
}

class _ScreenChatState extends State<ScreenChat> {
  late int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _buildMessage(Messages message, bool isMe) {
      return Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.all(5), child: Text(message.time)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isMe ? Colors.blue : Colors.black12,
              ),
              child: Text(
                message.content,
                style: TextStyle(
                  fontSize: 24,
                  color: isMe ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    }

    _buildFutureMessage() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 50.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.fullscreen_sharp),
              iconSize: 25.0,
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.camera_alt),
              iconSize: 25.0,
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25.0,
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.keyboard_voice_rounded),
              iconSize: 25.0,
              color: Colors.blue,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Aa',
                  suffixIcon: Icon(CupertinoIcons.smiley, color: Colors.orange),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up_alt_rounded),
              iconSize: 25.0,
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      );
    }

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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.users.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            widget.users.status
                ? Text(
                    'đang hoạt động',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                : SizedBox.shrink(),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.blue,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.video_camera_solid,
                    size: 30,
                    color: Colors.blue,
                  )),
              Icon(
                Icons.circle,
                size: 10,
                color: widget.users.status ? Colors.green : Colors.white,
              ),
              IconButton(
                  onPressed: () {
                    print('ass');
                  },
                  icon: Icon(Icons.info_rounded, size: 30, color: Colors.blue))
            ],
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, index) {
                    final Messages message = messages[index];
                    // check id cua nguoi giu co bang id cua ng hien tai k //
                    final bool isME = message.sender.id == currentUser.id;
                    return _buildMessage(message, isME);
                  }),
            ),
          ),
          _buildFutureMessage(),
        ],
      ),
    );
  }
}
