import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentSoll extends StatelessWidget {
  const ContentSoll(
      {Key? key,
      required this.images,
      required this.title,
      required this.imageHeight,
      required this.imageWidth})
      : super(key: key);
  final List<String> images;
  final String title;
  final double imageHeight;
  final double imageWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: imageHeight,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  width: imageWidth,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
