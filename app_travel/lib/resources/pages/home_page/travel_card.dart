import 'package:app_travel/models/travel_model.dart';
import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  const TravelCard({Key? key, required this.width, required this.travel})
      : super(key: key);
  final double width;
  final TravelModel travel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(travel.image!),
          colorFilter: const ColorFilter.mode(
              Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.favorite,
                        size: width * 0.04,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                        text: "13050",
                        style: TextStyle(fontSize: width * 0.04)),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  travel.recommend!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.star,
                          size: width * 0.05,
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                          text: "  4.5",
                          style: TextStyle(fontSize: width * 0.04)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
