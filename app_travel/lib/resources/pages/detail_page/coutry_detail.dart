import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/place_model.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/widgets/picture_preview.dart';
import 'package:app_travel/resources/widgets/tour_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CountryDetail extends StatefulWidget {
  const CountryDetail({Key? key}) : super(key: key);

  @override
  _CountryDetailState createState() => _CountryDetailState();
}

class _CountryDetailState extends State<CountryDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.Explore,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: size.width * 0.03,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                S.current.SouthAfrica,
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: const [
                  PicturePreview(image: africa1),
                  PicturePreview(image: africa2),
                  PicturePreview(image: africa3),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  height: 300,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$959',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.06,
                                color: Colors.teal),
                          ),
                          TextSpan(
                            text: ' /30 ${S.current.Days}',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width * 0.035),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.favorite,
                              size: size.width * 0.04,
                              color: Colors.teal,
                            ),
                          ),
                          TextSpan(
                            text: "70K",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.DescriptionCountry,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: size.width * 0.035),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: size.width * 0.1,
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    S.current.BookNow,
                    style: TextStyle(fontSize: size.width * 0.04),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.ExploreToo,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width,
                height: size.width * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listTourCard.map((tour) {
                    return TourCard(size: size, tour: tour);
                  }).toList(),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
