class RecommendDoctor {
  final String name, image;
  final String speciality; // chuyen mon
  final String institute; // hoc vien

  RecommendDoctor(
      {required this.name,
      required this.speciality,
      required this.institute,
      required this.image});
}

List<RecommendDoctor> recommendDoctors = [
  RecommendDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
  ),
  RecommendDoctor(
    name: "Dr. Serena Gome",
    speciality: "Medicine Specialist ",
    institute: "Good Health Clinic",
    image: "assets/images/Serena_Gome.png",
  ),
  RecommendDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
  ),
  RecommendDoctor(
    name: "Dr. Asma Khan",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Asma_Khan.png",
  ),
  RecommendDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
  ),
];
