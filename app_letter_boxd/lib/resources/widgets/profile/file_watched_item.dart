import 'package:app_letter_boxd/models/film_watched_model.dart';
import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/views/detail/movie_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class FilmWathedItem extends StatelessWidget {
  const FilmWathedItem({ Key? key, required this.filmWathedModel }) : super(key: key);
   final FilmWathedModel filmWathedModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const MoviePage()));
       },
      child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         width: 62, 
                          height: 90, 
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage(filmWathedModel.imageUrl))
                           ),
                       ),
                       SvgPicture.asset(filmWathedModel.stars),
                        Text("Read more >",
                                   style: txtSemiBold(12, HexColor("#9C4A8B"))) 
                                 
                     ],
                 ),
               ),
    );
  }
}