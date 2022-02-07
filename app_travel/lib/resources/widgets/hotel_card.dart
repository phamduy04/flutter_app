import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/hotel_model.dart';
import 'package:app_travel/resources/pages/detail_page/travel_detail.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
    required this.width,
    required this.hotel
  }) : super(key: key);

  final double width;
  final HotelModel hotel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (_)=> const TravelDetail()));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(hotel.image),
            colorFilter: const ColorFilter.mode(
                Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
          ),
          borderRadius:
              const BorderRadius.all(Radius.circular(15.0)),
          color: Colors.redAccent,
        ),
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: width * 0.02),
                width: double.infinity,
                child: RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          size: width * 0.04,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                          text: "4.5",
                          style: TextStyle(
                              fontSize: width * 0.04)),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: TextStyle(
                        fontSize: width * 0.05,
                         color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: width * 0.02),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "\$99",
                            style: TextStyle(
                                fontSize: width * 0.06,
                                color: Colors.teal)),
                        TextSpan(
                            text: " /${S.current.Night}",
                            style: TextStyle(
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ),
                  SizedBox(height: width * 0.08),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
