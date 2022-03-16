import 'package:app_letter_boxd/resources/constants.dart';

class ReviewsModel {
  final String imageAuthor;
  final String nameReviewer;
  final String timeStamp;
  final String nameFilm;
  final String numberMesage;
  final String reviews;
  final String imageFilm;
  ReviewsModel(
      {required this.imageAuthor,
      required this.nameFilm,
      required this.timeStamp,
      required this.nameReviewer,
      required this.numberMesage,
      required this.reviews,
      required this.imageFilm
      });
}

List<ReviewsModel> listReviews = [
  ReviewsModel(
      imageAuthor: reviewer1,
      nameFilm: "The Irishman",
      timeStamp: "2019",
      nameReviewer: "Adrian",
      numberMesage: "8",
      reviews:
          "working stiffs.\nnot sure i've ever mentioned this before but i have a very personal fear of not... feeling... correctly. like enormously important things are happening around you in a matter-of-fact, dissociative way that you can understand the significance of but you can't shake..",
      imageFilm:  filmReviewer1   
     ),
  ReviewsModel(
      imageAuthor: reviewer2,
      nameFilm: "Zack Snyder's Justice League ",
      timeStamp: "2021",
      nameReviewer: "Audrey",
      numberMesage: "2",
      reviews:
          "the interesting thing about snyder is that he always swings big: whether it results in a colossal whiff or a home run just depends on the particular project, amount of creative control, and audience reception. but he always puts his unique style into it, and for that reason i’ve really grown fond of his stuff. his involvement in the dceu has kept me interested, and i still have fun with both their best content or biggest flops...",
       imageFilm:  filmReviewer2
      ),
  ReviewsModel(
      imageAuthor: reviewer3,
      nameFilm: "tick, tick…BOOM! ",
      timeStamp: "2021",
      nameReviewer: "Audrey",
      numberMesage: "20",
      reviews: "",
       imageFilm:  filmReviewer3
      )
];
