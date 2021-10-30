import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Regime {
  final Icon icon;
  final String nameRegime;

  Regime({required this.icon, required this.nameRegime});
}

List<Regime> Regimetuychon = [
  Regime(
      icon: Icon(
        Icons.shield_rounded,
        color: Colors.blue,
        size: 35,
      ),
      nameRegime: 'Quyền riêng tư'),
  Regime(
      icon: Icon(
        CupertinoIcons.smiley_fill,
        color: Colors.orange,
        size: 35,
      ),
      nameRegime: 'Avatar'),
  Regime(
      icon: Icon(
        CupertinoIcons.bell,
        color: Colors.purple,
        size: 35,
      ),
      nameRegime: 'Thông báo & âm thanh'),
  Regime(
      icon: Icon(
        Icons.shield_outlined,
        color: Colors.blue,
        size: 35,
      ),
      nameRegime: 'Trình tiết kiệm dữ  liệu'),
  Regime(
      icon: Icon(
        CupertinoIcons.bubble_left_bubble_right_fill,
        color: Colors.blue,
        size: 35,
      ),
      nameRegime: 'Tin'),
  Regime(
      icon: Icon(
        CupertinoIcons.chat_bubble_fill,
        color: Colors.purple,
        size: 35,
      ),
      nameRegime: 'SMS'),
  Regime(
      icon: Icon(
        CupertinoIcons.person_2_fill,
        color: Colors.blue,
        size: 35,
      ),
      nameRegime: 'Danh sách điện thoại.'),
  Regime(
      icon: Icon(
        CupertinoIcons.photo_fill,
        color: Colors.purple,
        size: 35,
      ),
      nameRegime: 'Ảnh & Phương tiện'),
];

List<Regime> RegimeTaiKhoan = [
  Regime(
      icon: Icon(
        Icons.earbuds_rounded,
        size: 35,
        color: Colors.purple,
      ),
      nameRegime: 'Chuyển tài khoản'),
  Regime(
      icon: Icon(Icons.settings, size: 35, color: Colors.blueAccent),
      nameRegime: 'Cài đặt tài khoản'),
  Regime(
      icon: Icon(CupertinoIcons.exclamationmark_triangle_fill,
          size: 35, color: Colors.orange),
      nameRegime: 'Báo cáo vấn đề kĩ thuật'),
  Regime(
      icon: Icon(Icons.help, size: 35, color: Colors.blueAccent),
      nameRegime: 'Trợ giúp'),
  Regime(
      icon: Icon(Icons.save, size: 35, color: Colors.black38),
      nameRegime: 'Pháp lý & chính sách'),
];
