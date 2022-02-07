import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/models/image_model.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
        title: Text(
          S.current.Gallery,
          style: const TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                  image: const DecorationImage(
                      fit: BoxFit.fitWidth, image: AssetImage(imageUser))))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  width: size.width,
                  height: size.height,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.67,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: listImage.map((image) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(image.image!))),
                          ),
                          Positioned(
                              right: 10,
                              bottom: 15,
                              child: Icon(
                                Icons.favorite,
                                size: 24,
                                color: image.islike!
                                    ? Colors.red
                                    : Colors.lightBlue,
                              ))
                        ],
                      );
                    }).toList(),
                  )))),
    );
  }
}
