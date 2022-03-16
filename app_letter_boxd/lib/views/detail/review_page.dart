
import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({ Key? key }) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: HexColor("#1F1D36"),
       body:SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                const SizedBox(height: 40,),
                 Row(
                   children: [
                      IconButton(onPressed: (){
                         Navigator.pop(context);
                      }, icon:const  Icon(Icons.arrow_back, color: Colors.white, size: 24,)),
                      Text("Write Your Review",
                       style:  txtRegular(20,Colors.white),
                      )
                   ],
                 ),
                 const SizedBox(height: 33,),
                 Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("The Batman ",
                                 style: txtBold(16, Colors.white),
                                ),
                                Text("2022",
                                 style: txtRegular(14, Colors.white.withOpacity(0.5)),
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text("Specify the date you watched it",
                             style: txtRegular(14, Colors.white),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              width: 250,
                               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: HexColor("#3D3B54")
                                ),
                                child: Row(
                                   children: [
                                     SvgPicture.asset(icondiary),
                                     const SizedBox(width: 13,),
                                     Text("06 March 2022",
                                      style: txtRegular(14, Colors.white),
                                     ),
                                     const SizedBox(width: 33,),
                                     Text("change",
                                      style: txtRegular(14,HexColor("#E9A6A6")),
                                     )
                                   ],
                                ),
                            ),
                             const SizedBox(height: 10,),
                             Text("Specify the date you watched it",
                             style: txtRegular(16, Colors.white),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                SvgPicture.asset(iconDefaulStar, color: HexColor("#3D3B54"),),
                                const SizedBox(width: 48,),
                                 SvgPicture.asset(iconLikeColor)
                              ],
                            )
                          ],
                        )),
                      Container(
                        width: 120, 
                         height: 180, 
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10) ,
                            image:const  DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(filmRecent5))
                         ),
                      )  
                    ],
                 ),
                 const SizedBox(height: 20,),
                  Container(
                     width: double.infinity, 
                      height: 410, 
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: HexColor("#3D3B54")
                       ),
                       child: TextField(
                          style:const  TextStyle(color: Colors.white),
                            keyboardType: TextInputType.multiline,
                            maxLines: 20,
                            decoration: InputDecoration(
                               hintText: 'Write down your review...',
                                hintStyle: txtRegular(14, Colors.white.withOpacity(0.5)),
                                border:const  OutlineInputBorder(),
                               fillColor: Colors.white 
                            )
                          ),
                  ),
                  const SizedBox(height:20 ,),
                   Align(
                     alignment:  Alignment.topRight,
                     child: GestureDetector(
                        onTap: (){},
                       child: Container(
                          width: 110, 
                           height: 36, 
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: HexColor("#E9A6A6")
                            ),
                            child: Center(
                              child: Text('Publish',
                               style: txtRegular(14, Colors.black),
                              ),
                            ),
                       ),
                     ),
                   )
              ],
           ),
         ),
       ) ,
    );
  }
}