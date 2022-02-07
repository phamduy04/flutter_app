import 'package:app_travel/models/country_model.dart';
import 'package:app_travel/resources/pages/detail_page/coutry_detail.dart';
import 'package:flutter/material.dart';

class ListCountryCard extends StatelessWidget {
  const ListCountryCard({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height * 0.17,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listCountry.map((country) {
          return GestureDetector(
             onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const CountryDetail()));
             },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              alignment: Alignment.center,
              width: width * 0.38,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(country.imageCountry!),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Center(
                child: Text(
                  country.country!,
                  style: const TextStyle(
                      fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

