import 'package:app_letter_boxd/models/film_watched_model.dart';
import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/resources/widgets/profile/file_watched_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: HexColor("#1F1D36"),
       body:SingleChildScrollView(
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity, 
                     height:  240, 
                      decoration:const  BoxDecoration(
                         image: DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(convertImage))
                      )
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:200),
                      child: Column(
                         children: [
                            Stack(
                              children: [
                                Container(
                                  width: 90, 
                                  height: 90, 
                                  decoration:const  BoxDecoration(
                                     shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(reviewer2))
                                  ),
                                ),
                                Positioned(
                                  right: 5, 
                                  top: 5,
                                  child: Container(
                                     width: 18, 
                                      height: 18, 
                                       decoration:  BoxDecoration(
                                          shape: BoxShape.circle,
                                           color: HexColor("#1F1D36")
                                       ),
                                       child: Center(
                                         child:SvgPicture.asset(iconEdit) ,
                                       ),
                                  ))
                              ],
                            )
                         ],
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: Column(
                   children: [
                     Text("Kyran",
                      style: txtBold(24, Colors.white),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 80),
                       child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text("500 Followers",
                                    style: txtRegular(18, Colors.white),
                                   ),
                                   Container(
                                     width: 70, 
                                      height: 1.3, 
                                      margin: const EdgeInsets.only(left: 20),
                                      color: Colors.redAccent,    
                                   )
                                ],
                             ),
                             const SizedBox( width: 25,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text("420 Followings",
                                    style: txtRegular(18, Colors.white),
                                   ),
                                   Container(
                                     width: 70, 
                                      height: 1.3, 
                                      margin: const EdgeInsets.only(left: 20),
                                      color: Colors.redAccent,    
                                   )
                                ],
                             )
                           ],
                       ),
                     )
                   ],
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Text("455",
                                style: txtBold(24,HexColor("#E9A6A6")),
                               ),
                             ),
                             Text("Total Films",
                              style: txtRegular(16,Colors.white),
                             )
                        ],
                     ),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Text("33",
                                style: txtBold(24,HexColor("#9C4A8B")),
                               ),
                             ),
                             Text("Film This Year",
                              style: txtRegular(16,Colors.white),
                             )
                        ],
                     ),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Text("4",
                                style: txtBold(24,HexColor("#E9A6A6")),
                               ),
                             ),
                             Text("Lists",
                              style: txtRegular(16,Colors.white),
                             )
                        ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Padding(
                               padding: const EdgeInsets.only(right: 20),
                               child: Text("30",
                                style: txtBold(24,HexColor("#9C4A8B")),
                               ),
                             ),
                             Text("Review",
                              style: txtRegular(16,Colors.white),
                             )
                        ],
                     )
                  ],
              ) ,
               const SizedBox(height: 16,),
               Center(
                 child: Text("Kyran's Favorite Films",
                  style: txtSemiBold(22, Colors.white),
                 ),
               ),
               const SizedBox(height: 15,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     width: 67, 
                      height: 95, 
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10) ,
                          image:const  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(facFilm1))
                       ),
                   ),
                    Container(
                     width: 67, 
                      height: 95, 
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10) ,
                         image:const  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(facFilm2))
                       ),
                   ),
                    Container(
                     width: 67, 
                      height: 95, 
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10) ,
                          image:const  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(facFilm3))
                       ),
                   ),
                    Container(
                     width: 67, 
                      height: 95, 
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10) ,
                          image:const  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(facFilm4))
                       ),
                   )
                 ],
               ),
               const SizedBox(height: 18,),
               Divider(
                height: 1, 
                 color: HexColor("#FFFFFF").withOpacity(0.19),
               ),
               const SizedBox(height: 16,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Kyran's Recent Watched",
                      style: txtSemiBold(20, Colors.white),
                     ),
                     Text("See All",
                      style: txtSemiBold(16, HexColor("#E9A6A6")),
                     )
                   ],
                 ),
               ), 
               const SizedBox(height: 16,),
               SizedBox(
                 width: double.infinity, 
                 height: 120,
                  child: ListView(
                     scrollDirection: Axis.horizontal, 
                      physics:const  NeverScrollableScrollPhysics(),
                      shrinkWrap: true, 
                       children: listFimWatched.map((film){
                          return FilmWathedItem(filmWathedModel: film);
                       }).toList(),
                  ),
               ),
               const SizedBox(height: 16,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Kyran's Recent Watched",
                      style: txtSemiBold(20, Colors.white),
                     ),
                     Text("See All",
                      style: txtSemiBold(16, HexColor("#E9A6A6")),
                     )
                   ],
                 ),
               ),
               const SizedBox(height: 16,),
               Container(
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
                           decoration:const   BoxDecoration(
                               shape: BoxShape.circle ,
                               image: DecorationImage(
                                  fit: BoxFit.cover,
                                 image: AssetImage(reviewer2))
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
                                   Text("Jaws",
                                    style: txtSemiBold(12,Colors.white),
                                   ),
                                   Text("1975",
                                    style: txtRegular(10,Colors.white.withOpacity(0.5))
                                   ),
                                 ],
                               ),
                                Row(
                                 children: [
                                   Text("Review by ",
                                    style: txtSemiBold(10,Colors.white.withOpacity(0.5)),
                                   ),
                                   Text("Kyran",
                                    style: txtRegular(10,HexColor("#E9A6A6"))
                                   ),
                                   const SizedBox(width: 5,),
                                  SvgPicture.asset(iconStar),
                                  const SizedBox(width: 5,),
                                  SvgPicture.asset(iconMessage),
                                  const SizedBox(width: 5,),
                                   Text("10",
                                    style: txtSemiBold(8,Colors.white.withOpacity(0.5)),
                                   ),
                                  
                                 ],
                               ),
                             Text("A tragic tale of a lost and distressed fish hunted down by an aquaphobic police chief, a disgraced oceanographer trying to regain some of his tarnished reputation and a nasty drunk with a fetish for bowlegged women. All of them egged on by a corrupt mayor trying to find someone or something to blame for his small islands dwindling tourist industry and his poor taste in fashion. I wish it had a happy ending...", 
                                    style: txtRegular(6, Colors.white,)
                                   ),
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
                               image:const  DecorationImage(
                                  fit: BoxFit.cover,
                                 image: AssetImage(filmRecent1))
                           ),
                       ),  
                     ],
                  ),
              )
            ],
         ),
       ) ,
    );
  }

  
}