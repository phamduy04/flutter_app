import 'package:app_travel/models/place_model.dart';
import 'package:app_travel/resources/explore/explore_place.dart';
import 'package:flutter/material.dart';

class TourCard extends StatelessWidget {
  const TourCard({
    Key? key,
    required this.size,
    required this.tour
  }) : super(key: key);

  final Size size;
  final PlaceModel tour;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (_)=>const ExplorePlace()));
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(tour.imageTour!),
                colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.5),
                    BlendMode.darken),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.01),
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.04,
                  right: size.width * 0.04,
                  top: size.width * 0.04,
                  bottom: size.width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    tour.place!,
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    tour.numberPlace!,
                    style: TextStyle(
                        fontSize: size.width * 0.035,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
