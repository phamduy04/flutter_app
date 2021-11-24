class AvailableDoctor {
  final String name;
  final String sector; //khu vuc
  final String patients; // nguoi benh
  final String image;
  final int experience; // kinh nghiem

  AvailableDoctor(
      {required this.name,
      required this.sector,
      required this.experience,
      required this.patients,
      required this.image});
}

final List<AvailableDoctor> availableDoctors = [
  AvailableDoctor(
    name: "Dr. Serena Gome",
    sector: "Medicine Specialist",
    experience: 8,
    patients: '1.08K',
    image: "assets/images/Serena_Gome.png",
  ),
  AvailableDoctor(
    name: "Dr. Asma Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Asma_Khan.png",
  ),
  AvailableDoctor(
    name: "Dr. Kiran Shakia",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Kiran_Shakia.png",
  ),
  AvailableDoctor(
    name: "Dr. Masuda Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Masuda_Khan.png",
  ),
  AvailableDoctor(
    name: "Dr. Johir Raihan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Johir_Raihan.png",
  ),
];
