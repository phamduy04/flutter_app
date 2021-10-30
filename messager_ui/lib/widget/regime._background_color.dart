import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_chat.dart';
import 'package:messager_ui/screen/screen_home.dart';
import 'package:messager_ui/screen/screen_profile.dart';

class RegimeBackGroudColor extends StatefulWidget {
  const RegimeBackGroudColor({Key? key}) : super(key: key);

  @override
  _RegimeBackGroudColorState createState() => _RegimeBackGroudColorState();
}

class _RegimeBackGroudColorState extends State<RegimeBackGroudColor> {
  late int _regime = 0;

  void regimeChangeColor(bool selected) {
    selected ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            )),
        title: Text(
          'Chế độ tối',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(children: [
        RadioListTile(
            title: Text('Tắt'),
            value: 0,
            selectedTileColor: Colors.amber,
            groupValue: _regime,
            onChanged: (value) {
              setState(() {
                _regime = int.parse(value.toString());
              });
            }),
        RadioListTile(
            title: Text('bật'),
            value: 1,
            activeColor: Colors.green,
            groupValue: _regime,
            onChanged: (value) {
              setState(() {
                _regime = int.parse(value.toString());
                print('bật');
              });

              // ScreenHome();
            }),
      ]),
    );
  }
}
