import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:messager_ui/widget/regime._background_color.dart';

class ContentProfile extends StatefulWidget {
  const ContentProfile({Key? key}) : super(key: key);
  @override
  _ContentProfileState createState() => _ContentProfileState();
}

class _ContentProfileState extends State<ContentProfile> {
  @override
  Widget build(BuildContext context) {
    Color selection = Colors.black;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.dark_mode,
                  size: 35,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegimeBackGroudColor()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chế độ tối',
                          style: TextStyle(
                            fontSize: 20,
                            color: selection,
                          ),
                        ),
                        Text(
                          'tắt',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  color: Colors.blue,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Tin nhắn đang chờ.',
                    style: TextStyle(fontSize: 20, color: selection),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.trash_circle_fill,
                  color: Colors.purple,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Đoạn chát đã lưu trữ',
                    style: TextStyle(fontSize: 20, color: selection),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Trang cá nhân',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  size: 35,
                  color: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trạng thái hoạt động',
                        style: TextStyle(
                          fontSize: 20,
                          color: selection,
                        ),
                      ),
                      Text(
                        'bật',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.at_circle,
                  color: Colors.red,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tên người dùng',
                        style: TextStyle(
                          fontSize: 20,
                          color: selection,
                        ),
                      ),
                      Text(
                        'm.me/duysky/sky',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
