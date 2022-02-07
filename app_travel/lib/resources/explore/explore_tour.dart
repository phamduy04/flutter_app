import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/explore_category.dart';
import 'package:app_travel/resources/widgets/explore_card.dart';
import 'package:flutter/material.dart';

class ExploreTour extends StatefulWidget {
  const ExploreTour({Key? key}) : super(key: key);

  @override
  _ExploreTourState createState() => _ExploreTourState();
}

class _ExploreTourState extends State<ExploreTour> {
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                S.current.Mountain,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.teal,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                S.current.ExploreMountain,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: size.width,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: listExploreCategory.map((category) {
                    return ExploreCard(category: category);
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
