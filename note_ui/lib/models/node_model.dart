class Notes {
  String title;
  String content;
  DateTime date;
  Notes({required this.title, required this.content, required this.date});
}

final Map<String, int> categories = {
  'Notes': 112,
  'Work ': 58,
  'Home': 23,
  'Complete': 32
};

final List<Notes> notes = [
  Notes(
      title: 'Buy ticket',
      content: 'Buy airplane ticket through Kayak for \$318.38',
      date: DateTime(2019, 10, 10, 8, 30)),
  Notes(
      title: 'Walk with dog',
      content: 'Walk on the street with my favorite dog.',
      date: DateTime(2019, 10, 10, 8, 21)),
];
