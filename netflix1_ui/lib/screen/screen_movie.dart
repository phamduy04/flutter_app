import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix1_ui/model/moive_model.dart';
import 'package:netflix1_ui/widget/circular_clipper.dart';
import 'package:netflix1_ui/widget/content_soll.dart';

class ScreenMovie extends StatefulWidget {
  const ScreenMovie({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  _ScreenMovieState createState() => _ScreenMovieState();
}

class _ScreenMovieState extends State<ScreenMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              child: Hero(
                  tag: widget.movie.imageUrl,
                  child: ClipShadowPath(
                      shadow: Shadow(blurRadius: 20.0),
                      clipper: CircularClipper(),
                      child: Image.asset(widget.movie.imageUrl))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        Icon(Icons.arrow_back, size: 30, color: Colors.black)),
                Image.asset(
                  'assets/netflix_logo.png',
                  width: 150,
                  height: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border,
                        size: 30, color: Colors.black))
              ],
            ),
            Positioned.fill(
              bottom: 10.0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RawMaterialButton(
                  padding: EdgeInsets.all(10.0),
                  elevation: 12.0,
                  onPressed: () => print('Play Video'),
                  shape: CircleBorder(),
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.play_arrow,
                    size: 60.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0.0,
                left: 20,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.black,
                    ))),
            Positioned(
                bottom: 0.0,
                right: 20,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      size: 40,
                      color: Colors.black,
                    ))),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(widget.movie.title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              Text(widget.movie.categories.toLowerCase(),
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(height: 10),
              Text(
                '⭐ ⭐ ⭐ ⭐',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'year',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        widget.movie.year.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'country',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        widget.movie.country.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'length',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '${widget.movie.length.toString()}min',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.movie.description,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              ContentSoll(
                  images: widget.movie.screenshots,
                  title: 'Screenshots',
                  imageHeight: 150,
                  imageWidth: 250)
            ],
          ),
        )
      ],
    ));
  }
}
