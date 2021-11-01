import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/models/move_model.dart';
import 'package:netflix_ui/widget/circular_clipper.dart';
import 'package:netflix_ui/widget/content_soll.dart';

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
      backgroundColor: Colors.white,
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
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.black,
                      )),
                  Image.asset(
                    'assets/netflix_logo.png',
                    width: 160,
                    height: 50,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.black,
                      ))
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.movie.title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.movie.categories.toLowerCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '⭐ ⭐ ⭐ ⭐',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('year'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(widget.movie.year.toString()),
                      ],
                    ),
                    Column(
                      children: [
                        Text('country'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(widget.movie.country),
                      ],
                    ),
                    Column(
                      children: [
                        Text('length'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${widget.movie.length.toString()} min'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(widget.movie.description),
                SizedBox(
                  height: 10,
                ),
                ContentSoll(
                    Images: widget.movie.screenshots,
                    title: 'Screenshots',
                    imageHeight: 150,
                    imageWidth: 200)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
