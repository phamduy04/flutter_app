import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/pages/profile_page/profile_settings.dart';
import 'package:flutter/material.dart';

class FunctionCard extends StatelessWidget {
  const FunctionCard({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        minLeadingWidth: 0.0,
        horizontalTitleGap: 0.0,
        leading: Container(
            height: width * 0.17,
            width: width * 0.17,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(mountain1), fit: BoxFit.cover)),
            child: null),
        title: Text(
          S.current.BrezeeTomsk,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.055,
            color: Theme.of(context).primaryColor,
          ),
        ),
        subtitle: SizedBox(
          width: double.infinity,
          child: RichText(
            textAlign: TextAlign.center,
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
                    style:
                        TextStyle(fontSize: width * 0.04, color: Colors.grey)),
              ],
            ),
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProfileSettings()));
          },
          child: Container(
            height: width * 0.12,
            width: width * 0.12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ));
  }
}
