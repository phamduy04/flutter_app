import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/resources/widgets/movie/reviewer_button_item.dart';
import 'package:app_letter_boxd/resources/widgets/movie/tab_section.dart';
import 'package:app_letter_boxd/views/detail/review_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage>with SingleTickerProviderStateMixin {
    int selectedIndex=0;
    TabController? _tabController;
    @override
  void initState() {
    _tabController=TabController(length: 3, vsync: this, initialIndex: selectedIndex,);
    super.initState();
  }
  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1F1D36"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(contentMovie)),
                    ),
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#1F1D36"),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Colors.white,
                        )),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 220),   
                 padding: const EdgeInsets.symmetric(horizontal: 20),          
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(filmRecent5))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(iconVisible),
                                  Text(
                                    "40k",
                                    style: txtRegular(
                                        10, Colors.white.withOpacity(0.5)),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10,),
                              Column(
                                children: [
                                  SvgPicture.asset(iconfacvourite),
                                  Text(
                                    "30k",
                                    style: txtRegular(
                                        10, Colors.white.withOpacity(0.5)),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10,),
                              Column(
                                children: [
                                  SvgPicture.asset(iconList),
                                  Text(
                                    "12k",
                                    style: txtRegular(
                                        10, Colors.white.withOpacity(0.5)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "The Batman ",
                                      style: txtSemiBold(14, Colors.white),
                                    ),
                                    Text(
                                      "2020",
                                      style: txtRegular(12, Colors.white),
                                    ),
                                    const SizedBox(width: 10,),
                                    Text(
                                      "176 mins",
                                      style: txtRegular(12, Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Directed by ",
                                      style: txtRegular(14, Colors.white),
                                    ),
                                    Text(
                                      "Matt Reeves",
                                      style: txtSemiBold(16, Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "UNMASK THE TRUTH.\nIn his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
                                  style: txtRegular(10, Colors.white),
                                ),
                                const SizedBox(height: 20,),
                                Text("Ratings",
                                 style: txtRegular(14, Colors.white.withOpacity(0.5)),
                                )
                              ],
                            ),
                          )),
                          const SizedBox(height: 16,),
                          
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(height:  10,),
                       ReviewerButtonItem(IconUrl: iconReviewer, title: "Rate or Review", onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_) =>const  ReviewPage()));
                       }),
                       ReviewerButtonItem(IconUrl: iconSolidList, title: "Add to Lists", onPressed: (){}),
                       ReviewerButtonItem(IconUrl: iconWatchList, title: "Add to Watchlist", onPressed: (){})
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                     children: [
                       SizedBox(
                          width: 150, 
                           height: 100, 
                            child: Image.asset(imageStar),
                       ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                           children: [
                             Text("4.4",
                              style: txtRegular(30,HexColor("#E9A6A6")),
                             ),
                             SvgPicture.asset(iconStar5)
                           ],
                        ),
                      )
                     ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 36,),
            const  TabSection(),
            const SizedBox(height: 36,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("All Reviews",
                          style: txtSemiBold(20, Colors.white),
                        ),
                        Text("See All",
                          style: txtSemiBold(16, HexColor("#E9A6A6")),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                    height: 1, 
                    color: HexColor("#FFFFFF").withOpacity(0.19),
                  ),
                  const SizedBox(height:20 ,), 
                  Container(
                    width: double.infinity, 
                      height: 120, 
                      margin: const EdgeInsets.only(bottom: 12,left: 20, right: 20),
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
                                    image: AssetImage(imageReviewer1))
                              ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    const SizedBox(width: 10,),
                                    Row(
                                    children: [
                                      Text("Review by ",
                                        style: txtSemiBold(10,Colors.white.withOpacity(0.5)),
                                      ),
                                      Text("David",
                                        style: txtRegular(10,HexColor("#E9A6A6"))
                                      ),
                                      const SizedBox(width: 5,),
                                      SvgPicture.asset(iconStar),
                                      const SizedBox(width: 5,),
                                      SvgPicture.asset(iconMessage),
                                      const SizedBox(width: 5,),
                                      Text("5",
                                        style: txtSemiBold(8,Colors.white.withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                Text("It was less than three years ago that Todd Phillips' mid-budget but mega-successful “Joker” threateningly pointed toward a future in which superhero movies of all sizes would become so endemic to modern cinema that they no longer had to be superhero movies at all. With Matt Reeves’ “The Batman” — a sprawling, 176-minute latex procedural that often appears to have more in common with serial killer sagas like “Se7en” and “Zodiac” than it does anything in the Snyderverse or the MCU — that future has arrived with shuddering force, for better or worse. Mostly better. ", 
                                        style: txtRegular(6, Colors.white,)
                                      ),
                                  TextButton(onPressed: (){}, 
                                  child:  Text("Read more >",
                                  style: txtSemiBold(12, HexColor("#9C4A8B"))) 
                                  ) ,
                                  
                                ],
                              ),
                            )),
                          
                        ],
                      ),
                  ),
                  Container(
                    width: double.infinity, 
                      height: 120, 
                      margin: const EdgeInsets.only(bottom: 12,left: 20, right: 20),
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
                                    image: AssetImage(imageReviewer2))
                              ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    const SizedBox(width: 10,),
                                    Row(
                                    children: [
                                      Text("Review by ",
                                        style: txtSemiBold(10,Colors.white.withOpacity(0.5)),
                                      ),
                                      Text("Mason",
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
                                Text("Believe the hype.\n\nThe Batman is a gritty noir detective story, which immediately sets it apart from the previous iterations and the aspect that I loved the most. The grime and desolation of Gotham oozes out of each scene through its immaculate cinematography and injected into your veins through Giacchino's brilliant score...", 
                                        style: txtRegular(6, Colors.white,)
                                      ),
                                  TextButton(onPressed: (){}, 
                                  child:  Text("Read more >",
                                  style: txtSemiBold(12, HexColor("#9C4A8B"))) 
                                  ) ,
                                  
                                ],
                              ),
                            )),
                          
                        ],
                      ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 160);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
