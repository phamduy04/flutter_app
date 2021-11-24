class Category {
  final String icon, title;
  Category({required this.icon, required this.title});
}

final List<Category> categories = [
  Category(icon: "assets/icons/Pediatrician.svg", title: "Pediatrician"),
  Category(icon: "assets/icons/Neurosurgeon.svg", title: "Neurosurgeon"),
  Category(icon: "assets/icons/Cardiologist.svg", title: "Cardiologist"),
  Category(icon: "assets/icons/Psychiatrist.svg", title: "Psychiatrist"),
];
