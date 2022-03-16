import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class FilmPopularItem extends StatelessWidget {
  const FilmPopularItem({ Key? key,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.title,
    required this.imageAuthor,
    required this.nameAuthor,
     required this.numberFavorite,
      required this.numberMessage
   }) : super(key: key);
   final String imageUrl1;
   final String imageUrl2;
   final String imageUrl3;
   final String imageUrl4;
   final String title;
   final String imageAuthor;
   final String nameAuthor;
   final String numberFavorite;
   final String numberMessage;
  @override
  Widget build(BuildContext context) {
    return Container(
              //margin: const EdgeInsets.only(right: 26),
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 36),
                          width: 60,
                          height: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(imageUrl1))),
                        ),
                        Positioned(
                          right: 12,
                          top: 0,
                          child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            width: 60,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imageUrl2))),
                          ),
                        ),
                        Positioned(
                          right: 24,
                          top: 0,
                          child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            width: 60,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imageUrl3))),
                          ),
                        ),
                        Positioned(
                          right: 36,
                          top: 0,
                          child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            width: 57,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imageUrl4))),
                          ),
                        )
                      ],
                    ),
                    Text(
                      title,
                      style: txtSemiBold(14, HexColor("#E9A6A6")),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(imageAuthor))),
                        ),
                        const SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            children: [
                              Text(nameAuthor,
                               style: txtSemiBold(6,HexColor("#E9A6A6")),
                              ), 
                               const SizedBox(width: 5,),
                              SvgPicture.asset(iconfacvourite),
                                Text(numberFavorite,
                                style: txtRegular(4,Colors.white.withOpacity(0.5)),
                                ),
                                 const SizedBox(width: 5,),
                                SvgPicture.asset(iconMessage),
                                 const SizedBox(width: 5,),
                                Text(numberMessage,
                                style: txtRegular(4,Colors.white.withOpacity(0.5)),
                                ),
                            ],
                          ),
                        ),
                       
                      ],
                    )
                  ],
                ),
              );
  }
}