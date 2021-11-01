import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/models/move_model.dart';

class ContentSoll extends StatelessWidget {
  const ContentSoll(
      {Key? key,
      required this.Images,
      required this.title,
      required this.imageHeight,
      required this.imageWidth})
      : super(key: key);
  final List<String> Images;
  final String title;
  final double imageHeight;
  final double imageWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(color: Colors.black, fontSize: 18)),
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
          height: 10,
        ),
        Container(
          height: imageHeight,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              scrollDirection: Axis.horizontal,
              itemCount: Images.length,
              itemBuilder: (BuildContext conext, index) {
                return Container(
                  width: imageWidth,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage(Images[index]),
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
