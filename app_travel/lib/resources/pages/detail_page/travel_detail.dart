import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/pages/home_page/list_tour_card.dart';
import 'package:app_travel/resources/widgets/picture_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TravelDetail extends StatefulWidget {
  const TravelDetail({Key? key}) : super(key: key);

  @override
  _TravelDetailState createState() => _TravelDetailState();
}

class _TravelDetailState extends State<TravelDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      Container(
        height: height / 2.5,
        width: width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            ),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(travelDetail))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: width * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(2),
                  primary: Colors.teal, // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.bookmark, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),

                  primary: Colors.teal, // <-- Button color
                  onPrimary: Colors.teal, // <-- Splash color
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.location_on,
                      size: width * 0.04,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                      text: S.current.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: width * 0.04,
                      )),
                ],
              ),
            ),
            SizedBox(height: width * 0.02),
            Text(
              S.current.destination1,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: width * 0.02),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    itemSize: width * 0.06,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 14,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(width: width * 0.02),
                Text(
                  '4.5',
                  style: TextStyle(color: Colors.grey, fontSize: width * 0.04),
                ),
                SizedBox(width: width * 0.04),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(S.current.AllReviews),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                )
              ],
            ),
            SizedBox(height: width * 0.02),
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
                              fontSize: width * 0.06,
                              color: Colors.teal),
                        ),
                        TextSpan(
                          text: ' /30${S.current.Days}',
                          style: TextStyle(
                              color: Colors.grey, fontSize: width * 0.035),
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
                            size: width * 0.04,
                            color: Colors.teal,
                          ),
                        ),
                        TextSpan(
                          text: "70K",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
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
            Row(
              children: [
                imagegUser(kareena, width),
                const SizedBox(
                  width: 10,
                ),
                imagegUser(katrina, width),
                const SizedBox(
                  width: 10,
                ),
                imagegUser(chiTrangada, width),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    S.current.Reviewed,
                    style: TextStyle(
                      fontSize: width * 0.035,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      const Divider(
        color: Colors.grey,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Text(
              S.current.DescriptionCountry,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: width * 0.035),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              S.current.Pictures,
              style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 15,
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              childAspectRatio: 0.65,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const <Widget>[
                PicturePreview(image: pic1),
                PicturePreview(image: pic2),
                PicturePreview(image: pic3),
                PicturePreview(image: pic4),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              S.current.RelatedDestinations,
              style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTourCard(width: width)
          ],
        ),
      ),
    ]))));
  }

  Widget imagegUser(String assetName, double width) {
    return Container(
      width: width * 0.1,
      height: width * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(assetName),
        ),
      ),
    );
  }
}
