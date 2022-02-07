import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/place_model.dart';
import 'package:app_travel/models/preview_model.dart';
import 'package:app_travel/models/recommend_model.dart';
import 'package:app_travel/resources/pages/home_page/list_country_card.dart';
import 'package:app_travel/resources/widgets/preview_card.dart';
import 'package:app_travel/resources/widgets/recommend_card.dart';
import 'package:app_travel/resources/widgets/tour_card.dart';
import 'package:flutter/material.dart';

class ExlorePage extends StatefulWidget {
  const ExlorePage({Key? key}) : super(key: key);

  @override
  _ExlorePageState createState() => _ExlorePageState();
}

class _ExlorePageState extends State<ExlorePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
   
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                S.current.Explore,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.035),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.ExploreTheWorld,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width,
                height: height * 0.35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listPreview.map((preview) {
                    return PreviewCard(
                        width: width, height: height, preview: preview);
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.ExploreToo,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width,
                height: width * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listTourCard.map((tour) {
                    return TourCard(size: size, tour: tour);
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.PopularDestinations,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              ListCountryCard(width: width, height: height),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.RecommendedHotel,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width,
                height: height * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listRecommend.map((recommend) {
                    return RecommendCard(
                        width: width, height: height, recommend: recommend);
                  }).toList(),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
