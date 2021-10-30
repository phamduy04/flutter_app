import 'package:messager_ui/models/user_model.dart';

class Messages {
  final Users sender;
  final String time;
  final String content;
  final bool islicked;
  final bool unRead;

  Messages({
    required this.sender,
    required this.time,
    required this.content,
    required this.islicked,
    required this.unRead,
  });
}

// you current user
final Users currentUser =
    Users(id: 0, name: 'Duy', imageUrl: 'assets/duy.png', status: true);

//user
final Users BuiDuy =
    Users(id: 1, name: 'Duy', imageUrl: 'assets/buiduy.png', status: true);

final Users Dat =
    Users(id: 2, name: 'Đạt', imageUrl: 'assets/dat.png', status: false);

final Users Duyen =
    Users(id: 3, name: 'Duyên', imageUrl: 'assets/duyen.png', status: true);

final Users Hien =
    Users(id: 4, name: 'Hiển', imageUrl: 'assets/hien.png', status: true);

final Users Hoa =
    Users(id: 5, name: 'Hòa', imageUrl: 'assets/hoa.png', status: true);

final Users Huy =
    Users(id: 6, name: 'Huy', imageUrl: 'assets/huy.png', status: false);

final Users Huyen =
    Users(id: 7, name: 'Huyền', imageUrl: 'assets/huyen.png', status: false);

final Users Lieu =
    Users(id: 8, name: 'Liễu', imageUrl: 'assets/lieu.png', status: true);

final Users Mai =
    Users(id: 9, name: 'Mai', imageUrl: 'assets/mai.png', status: false);

final Users Minh =
    Users(id: 10, name: 'Minh', imageUrl: 'assets/minh.png', status: true);

final Users Ngoan =
    Users(id: 11, name: 'Ngoan', imageUrl: 'assets/ngoan.png', status: true);

final Users Thao =
    Users(id: 12, name: 'Thảo', imageUrl: 'assets/thao.png', status: false);

final Users Thu =
    Users(id: 13, name: 'Thư', imageUrl: 'assets/thu.png', status: true);
final Users Thuy =
    Users(id: 14, name: 'Thúy', imageUrl: 'assets/thuy.png', status: true);

final Users Trung =
    Users(id: 15, name: 'Trung', imageUrl: 'assets/trung.png', status: false);

final Users TrungDung = Users(
    id: 16, name: ' dũng', imageUrl: 'assets/trungdung.png', status: true);

List<Users> favorites = [
  BuiDuy,
  Dat,
  Duyen,
  Hien,
  Hoa,
  Huy,
  Huyen,
  Lieu,
  Mai,
  Minh,
  Ngoan,
  Thao,
  Thu,
  Thuy,
  Trung,
  TrungDung
];

// RECENT CHATS//

List<Messages> chats = [
  Messages(
      sender: BuiDuy,
      time: '.4:30',
      content: 'hôm nay lmj v',
      islicked: true,
      unRead: false),
  Messages(
      sender: Dat,
      time: '.2:45',
      content: 'đang làm gì đấy..',
      islicked: false,
      unRead: true),
  Messages(
      sender: Duyen,
      time: '.1:30',
      content: 'hello anh',
      islicked: false,
      unRead: false),
  Messages(
      sender: Hien,
      time: '.10:30',
      content: 'm đang lmj v',
      islicked: true,
      unRead: true),
  Messages(
    sender: Hoa,
    time: '.4:50',
    content: ' duy hôm nay lmj v',
    islicked: true,
    unRead: false,
  ),
  Messages(
    sender: Huy,
    time: '.5:03',
    content: ' bảo cái này duy ơi.',
    islicked: true,
    unRead: false,
  ),
  Messages(
    sender: Huyen,
    time: '.9:05',
    content: 'em ơi chị bảo...',
    islicked: false,
    unRead: true,
  ),
  Messages(
      sender: Lieu,
      time: '.1:30',
      content: 'êu',
      islicked: true,
      unRead: false),
  Messages(
      sender: Mai,
      time: '.11:30',
      content: 'chào duy nha',
      islicked: false,
      unRead: false),
  Messages(
    sender: Minh,
    time: '.9:45',
    content: 'anh ơi em có cách này này..',
    islicked: true,
    unRead: true,
  ),
  Messages(
    sender: Ngoan,
    time: '.2:30',
    content: 'Duy ơi, ngoan bảo',
    islicked: false,
    unRead: false,
  ),
  Messages(
      sender: Thao,
      time: '.11:34',
      content: 'bảo cái này..',
      islicked: true,
      unRead: false),
  Messages(
      sender: Thu,
      time: '.8:30',
      content: 'duy ơi.....',
      islicked: true,
      unRead: true),
  Messages(
    sender: Thuy,
    time: '.9:05',
    content: 'êu nhờ làm cái này cái....',
    islicked: false,
    unRead: false,
  ),
  Messages(
      sender: Trung,
      time: '.3:30',
      content: 'Duy ơi, lmj v',
      islicked: true,
      unRead: true),
  Messages(
    sender: TrungDung,
    time: '.11:30',
    content: 'Êu.  bảo cái này..',
    islicked: true,
    unRead: false,
  ),
];

// MESSAGES//
List<Messages> messages = [
  Messages(
      sender: currentUser,
      time: '8:50',
      content: 'không có gì?',
      islicked: false,
      unRead: true),
  Messages(
      sender: BuiDuy,
      time: '8:43',
      content: 'uk rồi lms?',
      islicked: false,
      unRead: true),
  Messages(
      sender: currentUser,
      time: '8:40',
      content: 'hỏi thăm tí v.',
      islicked: false,
      unRead: true),
  Messages(
      sender: BuiDuy,
      time: '8:32',
      content: 'có chuyện gì?',
      islicked: false,
      unRead: true),
  Messages(
      sender: BuiDuy,
      time: '8:31',
      content: 'gi đấy.',
      islicked: false,
      unRead: true),
  Messages(
      sender: currentUser,
      time: '8:30',
      content: 'hello',
      islicked: false,
      unRead: true),
];
