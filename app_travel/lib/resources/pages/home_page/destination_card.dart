import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard(
      {Key? key, required this.width, required this.destination})
      : super(key: key);

  final double width;
  final Destination destination;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(destination.imageDestinations!),
              colorFilter: const ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: Colors.redAccent,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: width * 0.04),
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.location_on,
                            size: width * 0.06,
                            color: Colors.teal,
                          ),
                        ),
                         TextSpan(
                            text: S.current.location,
                            style:
                               const TextStyle(fontSize: 22, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  destination.description!,
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: width * 0.06,
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: width * 0.04,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: width * 0.02),
                    Text("4.5", style: TextStyle(fontSize: width * 0.04)),
                  ],
                ),
                SizedBox(height: width * 0.04),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$959',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.06),
                      ),
                      TextSpan(
                          text: ' /30${S.current.Days}',
                          style: TextStyle(
                            fontSize: width * 0.035,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: width * 0.04),
                Container(
                  height: width * 0.1,
                  padding: EdgeInsets.only(right: width * 0.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text(S.current.AddToPlan),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
