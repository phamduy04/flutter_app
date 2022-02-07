import 'package:app_travel/models/preview_model.dart';
import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard(
      {Key? key,
      required this.width,
      required this.height,
      required this.preview})
      : super(key: key);
  final double width;
  final double height;
  final PreviewModel preview;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width * 0.6,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(preview.image),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.redAccent,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                preview.place,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.06),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: width * 0.04),
              Text(
                preview.description,
                style: TextStyle(color: Colors.white, fontSize: width * 0.035),
              ),
              SizedBox(height: width * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
