import 'package:app_travel/models/explore_category.dart';
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({Key? key, required this.category}) : super(key: key);
  final ExploreCategory category;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(category.image!),
            colorFilter: const ColorFilter.mode(
                Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        )),
        Container(
          margin: const EdgeInsets.only(top: 120),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              Text(
                category.location!,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.location_on,
                    color: Colors.teal,
                    size: 22,
                  ),
                  Text(
                    category.country!,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
