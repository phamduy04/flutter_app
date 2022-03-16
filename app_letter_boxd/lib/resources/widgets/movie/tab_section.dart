import 'package:app_letter_boxd/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TabSection extends StatefulWidget {
  const TabSection({ Key? key }) : super(key: key);

  @override
  State<TabSection> createState() => _TabSectionState();
}

class _TabSectionState extends State<TabSection> {
  List<String> listCasts=[
    cast1,cast2,cast3, cast4, cast5
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              TabBar(    
                indicator: BoxDecoration(
                      color: HexColor("#9C4A8B"),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(child:  Text("Casts",
                      style: txtRegular(16, Colors.white),
                      ),),
                Tab(child:  Text("Crews",
                      style: txtRegular(16, Colors.white),
                      ),),
                Tab(child:  Text("Details",
                      style: txtRegular(16, Colors.white),
                      ),)          
              ]),
              SizedBox( 
                 width:  double.infinity,
                height: 130,
                child: TabBarView(children: [
                  SizedBox(
                    width: double.infinity,                    
                     child: ListView(
                        scrollDirection: Axis.horizontal, 
                        shrinkWrap:  true, 
                        children: listCasts.map((casts){
                              return Container(
                                  width:  90, 
                                  height: 90,       
                                   margin: const EdgeInsets.only(right: 15),                        
                                  decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: AssetImage(casts))
                                        )  
                              );
                        }).toList()
                     ),
                  ),
                  const   Text("Crews"),
                  const Text("Details"),
                ]),
              ),
            ],
          ),
        ),
      );
  }
}