import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:netflix_ui/models/move_model.dart';
import 'package:netflix_ui/screen/movie_screen.dart';
import 'package:netflix_ui/widget/content_soll.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  bool Selecttor = true;
  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = (_pageController.page! - index);
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScreenMovie(movie: movies[index])));
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: movies[index].imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(movies[index].imageUrl),
                      height: 220.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 30,
                child: Container(
                    width: 250,
                    child: Text(movies[index].title.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )))),
            Positioned(
                right: 20,
                bottom: 30,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        Selecttor = !Selecttor;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Selecttor ? Colors.white : Colors.red,
                    )))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              )),
          elevation: 0.0,
          title: Image.asset('assets/netflix_logo.png'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 30,
                  color: Colors.black,
                ))
          ],
        ),
        body: ListView(
          children: [
            Container(
                height: 280,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, index) {
                      return _movieSelector(index);
                    })),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: labels.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFD45253),
                            Color(0xFF9E1F28),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF9E1F28),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          labels[index].toLowerCase(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            ContentSoll(
                Images: mylist,
                title: 'Mylist',
                imageHeight: 250,
                imageWidth: 150),
            SizedBox(
              height: 20,
            ),
            ContentSoll(
                Images: popular,
                title: 'Popular',
                imageHeight: 250,
                imageWidth: 150),
          ],
        ));
  }
}
