import 'package:app_food/models/MealsByCategorie_Model.dart';
import 'package:flutter/material.dart';

import 'meal_detail_screen.dart';

class MealsByCategotrieScreen extends StatelessWidget {
   MealsByCategotrieScreen({Key? key, required this.categoryName, required this.future})
      : super(key: key);
  final String categoryName;
  Future<List<MealsByCategorie>>? future;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
        titleSpacing: 0,
        title: Text(
          categoryName + ' Meals',
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<MealsByCategorie>>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              List<MealsByCategorie> listData = snapshot.data!;
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    MealsByCategorie value = listData[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealDetail(
                                    ID: value.idMeal
                                        .toString())));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 5,
                                color: Color.fromARGB(76, 0, 0, 0),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.grey.shade300,
                                  image: snapshot.hasData
                                      ? DecorationImage(
                                          image: NetworkImage(
                                              value.strMealThumb.toString()),
                                          fit: BoxFit.cover)
                                      : null,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  snapshot.hasData
                                      ? Text(
                                          value.strMeal!,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        )
                                      : Container(
                                          height: 15,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }
            return Container();
          }),
    );
  }
}
