class Comment {
  final String authorName;
  final String authorImageUrl;
  final String text;

  Comment(
      {required this.authorName,
      required this.authorImageUrl,
      required this.text});
}

final List<Comment> comments = [
  Comment(
      authorName: 'Angel',
      authorImageUrl: 'assets/images/user2.png',
      text: 'Loving this photo!!'),
  Comment(
      authorName: 'Charlie',
      authorImageUrl: 'assets/images/user3.png',
      text: 'One of the best photos of you...'),
  Comment(
      authorName: 'Angelina Martin',
      authorImageUrl: 'assets/images/user4.png',
      text: 'Can\'t wait for you to post more!'),
  Comment(
      authorName: 'Jax',
      authorImageUrl: 'assets/images/user1.png',
      text: 'Nice job'),
  Comment(
      authorName: 'Sam Martin',
      authorImageUrl: 'assets/images/user0.png',
      text: 'Thanks everyone :)'),
];
