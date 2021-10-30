import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/message_model.dart';
import 'package:messager_ui/screen/screen_profile.dart';
import 'package:messager_ui/widget/private_profile.dart';

class ScreenNews extends StatefulWidget {
  const ScreenNews({Key? key}) : super(key: key);

  @override
  _ScreenNewsState createState() => _ScreenNewsState();
}

class _ScreenNewsState extends State<ScreenNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenProfile()));
            },
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/duy.png'),
                )
              ],
            ),
          ),
        ),
        title: Text(
          'Tin',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 2.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: favorites.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PrivateProfile(users: favorites[index])));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(favorites[index].imageUrl),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: Text(
                          favorites[index].name,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
