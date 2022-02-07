import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/destination.dart';
import 'package:app_travel/models/travel_model.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/pages/home_page/destination_card.dart';
import 'package:app_travel/resources/pages/home_page/list_country_card.dart';
import 'package:app_travel/resources/pages/home_page/list_tour_card.dart';
import 'package:app_travel/resources/pages/home_page/travel_card.dart';
import 'package:app_travel/views/auth/sign_up.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? searchController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Theme.of(context).hintColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.Hi + " " + S.current.UserName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).focusColor,
                  ),
                ),
                Text(
                  S.current.wellCome,
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SignUp(width: width)));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 15, bottom: 10),
                child: Badge(
                  badgeContent: const Text(' '),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imageUser,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: searchController,
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: S.current.Seach,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTourCard(width: width),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  S.current.ToDay,
                  style: TextStyle(
                      fontSize: 18, color: Theme.of(context).primaryColor),
                ),
                Text(
                  S.current.Question,
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListCountryCard(width: width, height: height),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  S.current.Laster,
                  style: TextStyle(
                      fontSize: 18, color: Theme.of(context).primaryColor),
                ),
                Text(
                  S.current.PopularDestinations,
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: listDescription.map((destination) {
                    return DestinationCard(
                        width: width, destination: destination);
                  }).toList(),
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: 300,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  S.current.Recommend,
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  S.current.ForYou,
                  style: TextStyle(
                      fontSize: 18, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: GridView.count(
                      crossAxisCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      childAspectRatio: 1 / 2.2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: listTravel.map((travel) {
                        return TravelCard(width: width, travel: travel);
                      }).toList()),
                )
              ],
            ),
          ),
        ));
  }
}
