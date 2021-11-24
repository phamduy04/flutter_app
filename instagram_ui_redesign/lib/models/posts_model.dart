import 'package:flutter/rendering.dart';

class Post {
  final String authorName;
  final String authorImageUrl;
  final String timeago;
  final String imageUrl;

  Post(
      {required this.authorName,
      required this.authorImageUrl,
      required this.timeago,
      required this.imageUrl});
}

final List<Post> posts = [
  Post(
      authorName: 'Sam Martin',
      authorImageUrl: 'assets/images/user0.png',
      timeago: '5 min',
      imageUrl: 'assets/images/post0.png'),
  Post(
      authorName: 'Sam Martin',
      authorImageUrl: 'assets/images/user0.png',
      timeago: '10 min',
      imageUrl: 'assets/images/post1.png'),
];
final List<String> stories = [
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
];
