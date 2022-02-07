import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/factorite_model.dart';
import 'package:app_travel/resources/pages/detail_page/travel_detail.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {Key? key,
      required this.favorite,
      required this.width,
      required this.height})
      : super(key: key);
  final double width;
  final double height;
  final FavoriteModel favorite;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const TravelDetail()));
      },
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        favorite.image,
                      ),
                      fit: BoxFit.cover,
                      isAntiAlias: true)),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        favorite.description,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: width * 0.02),
                      RichText(
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
                                    fontSize: width * 0.04,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                      SizedBox(height: width * 0.04),
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
                                text: ' /30 ${S.current.Days}',
                                style: TextStyle(
                                    fontSize: width * 0.035,
                                    color: Colors.grey))
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
