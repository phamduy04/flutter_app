import 'package:flutter/material.dart';
import 'package:travle_booking_ui/models/place_model.dart';
import 'package:travle_booking_ui/place_screen.dart';

class ScreenTravelBooking extends StatefulWidget {
  const ScreenTravelBooking({Key? key}) : super(key: key);

  @override
  _ScreenTravelBookingState createState() => _ScreenTravelBookingState();
}

class _ScreenTravelBookingState extends State<ScreenTravelBooking> {
  int _SelectType = 0;

  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(Container(
          height: 80,
          child: Center(
            child: ListTile(
              leading: Hero(
                tag: place.imageUrl,
                child: Image.asset(place.imageUrl),
              ),
              title: Text(
                place.city,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                place.country,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              trailing: InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenPlace(place: place)));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
            ),
          )));
    });
    return Column(children: popularPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.menu),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Book unique homes and expenriences',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: _SelectType == 0
                          ? Colors.transparent
                          : Color(0xFFD2D1D6),
                    ),
                  ),
                  color: _SelectType == 0 ? Color(0xFFFFC05F) : null,
                  child: Text(
                    'Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _SelectType = 0;
                    });
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: _SelectType == 1
                          ? Colors.transparent
                          : Color(0xFFD2D1D6),
                    ),
                  ),
                  color: _SelectType == 1 ? Color(0xFFFFC05F) : null,
                  child: Text(
                    'Flights',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _SelectType = 1;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Where',
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF),
                    ),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 30,
                    ),
                  )),
            ),
            Divider(height: 25),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Check-in - Check-out',
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF),
                    ),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.blue,
                      size: 30,
                    ),
                  )),
            ),
            Divider(height: 25),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '1 Adults, 0 Children, 1 Room',
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 30,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  print('you clicked');
                },
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Search',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ))),
            SizedBox(height: 30.0),
            Text(
              'Popular places',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            _buildPopularPlaces(),
          ],
        ),
      ),
    );
  }
}
