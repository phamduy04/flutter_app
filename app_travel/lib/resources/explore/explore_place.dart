import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/hotel_model.dart';
import 'package:app_travel/resources/widgets/hotel_card.dart';
import 'package:flutter/material.dart';

class ExplorePlace extends StatefulWidget {
  const ExplorePlace({Key? key}) : super(key: key);

  @override
  _ExplorePlaceState createState() => _ExplorePlaceState();
}

class _ExplorePlaceState extends State<ExplorePlace> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.Hotel,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: width * 0.03,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                S.current.ExploreHotels,
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: width,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: listHotel.map((hotel) {
                      return HotelCard(width: width, hotel: hotel);
                    }).toList(),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
