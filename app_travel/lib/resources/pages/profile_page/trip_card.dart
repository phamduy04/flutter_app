import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    Key? key,
    required this.image,
     required this.place,
      required this.country
  }) : super(key: key);
  final String image;
  final String place;
  final String country;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image))),
        ),
        Positioned(
            left: 15,
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                 place,
                  style:const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   const Icon(
                      Icons.location_on,
                      color: Colors.teal,
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    Text(
                    country,
                      style:const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
