import 'package:app_letter_boxd/models/reviews_model.dart';
import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/views/detail/movie_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ReviewsItem extends StatelessWidget {
  const ReviewsItem({ Key? key, required this.reviewsModel}) : super(key: key);
  final ReviewsModel reviewsModel;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
       onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) =>const  MoviePage()));
       },
      child: Container(
                   width: double.infinity, 
                    height: 120, 
                     margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                       borderRadius:const BorderRadius.only(
                         topLeft: Radius.circular(30),
                         topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                         ),
                         color: HexColor("#50404d").withOpacity(0.5)
                    ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           width: 45, 
                            height:  45, 
                             decoration:  BoxDecoration(
                                 shape: BoxShape.circle ,
                                 image: DecorationImage(
                                    fit: BoxFit.cover,
                                   image: AssetImage(reviewsModel.imageAuthor))
                             ),
                         ),
                         Expanded(
                           flex: 2,
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 10),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     Text(reviewsModel.nameFilm,
                                      style: txtSemiBold(12,Colors.white),
                                     ),
                                     Text(reviewsModel.timeStamp,
                                      style: txtRegular(10,Colors.white.withOpacity(0.5))
                                     ),
                                   ],
                                 ),
                                  Row(
                                   children: [
                                     Text("Review by ",
                                      style: txtSemiBold(10,Colors.white.withOpacity(0.5)),
                                     ),
                                     Text(reviewsModel.nameReviewer,
                                      style: txtRegular(10,HexColor("#E9A6A6"))
                                     ),
                                     const SizedBox(width: 5,),
                                    SvgPicture.asset(iconStar),
                                    const SizedBox(width: 5,),
                                    SvgPicture.asset(iconMessage),
                                    const SizedBox(width: 5,),
                                     Text(reviewsModel.numberMesage,
                                      style: txtSemiBold(8,Colors.white.withOpacity(0.5)),
                                     ),
                                    
                                   ],
                                 ),
                                reviewsModel.reviews!="" 
                                ?Text(reviewsModel.reviews,
                                      style: txtRegular(6, Colors.white,)
                                     )
                                :const Text("") ,   
                                TextButton(onPressed: (){}, 
                                child:  Text("Read more >",
                                 style: txtSemiBold(12, HexColor("#9C4A8B"))) 
                                ) ,
                                 
                               ],
                             ),
                           )),
                         Container(
                           width: 63, 
                            height:  120, 
                             decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                 image: DecorationImage(
                                    fit: BoxFit.cover,
                                   image: AssetImage(reviewsModel.imageFilm))
                             ),
                         ),  
                       ],
                    ),
                ),
    );
  }
}