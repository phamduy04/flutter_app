import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/recommend_model.dart';
import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key? key,
    required this.width,
    required this.height,
     required this.recommend
  }) : super(key: key);

  final double width;
  final double height;
  final RecommendModel recommend;
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
       child: Row(
         children: [
           GestureDetector(
             // onTap: () => ontap(),
             child: SizedBox(
               width: width * 0.65,
               child: Column(
                 children: [
                   Expanded(
                       flex: 2,
                       child: Container(
                         decoration: BoxDecoration(
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                                 image: AssetImage(
                                   recommend.image,
                                 ),
                                 fit: BoxFit.cover,
                                 isAntiAlias: true)),
                       )),
                   Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: [
                           SizedBox(height: width * 0.01),
                           RichText(
                             text: TextSpan(
                               children: [
                                 WidgetSpan(
                                   child: Icon(
                                     Icons.location_on,
                                     size: width * 0.04,
                                     color: Colors.grey,
                                   ),
                                 ),
                                 TextSpan(
                                     text: recommend.country,
                                     style: TextStyle(
                                         fontSize: width * 0.04,
                                         color: Colors.grey)),
                               ],
                             ),
                           ),
                           SizedBox(height: width * 0.02),
                           Text(
                             recommend.place,
                             style: TextStyle(
                                 color:Theme.of(context).primaryColor,
                                 fontSize: width * 0.045,
                                 fontWeight: FontWeight.w700),
                             textAlign: TextAlign.left,
                           ),
                           SizedBox(height: width * 0.02),
                           Text.rich(
                             TextSpan(
                               children: <TextSpan>[
                                 TextSpan(
                                   text: '\$${recommend.price}',
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: width * 0.06,
                                       color: Colors.teal),
                                 ),
                                 TextSpan(
                                     text: ' /${S.current.Night}',
                                     style: TextStyle(
                                         fontSize: width * 0.035,
                                         color: Colors.grey))
                               ],
                             ),
                           ),
                         ],
                       ))
                 ],
               ),
             ),
           ),
         ],
       ),
     );
  }
}
