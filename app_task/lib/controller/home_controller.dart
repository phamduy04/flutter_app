
 import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController{
   int selectedIndex=0; 
    var scrollController= ScrollController();
     var progress=0.0.obs;

   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
     scrollController.addListener(() { 
        onScroll();
     });
  }  
  void onScroll(){
     if(scrollController.hasClients){
        progress.value= scrollController.offset/scrollController.position.maxScrollExtent;
     }
  }
   void setSelectedIndex(int index){
       selectedIndex=index;
        update();
   }
   String getWeekOfDaysFirstLettersByIndex(int index) {
    switch (index) {
      case 0:
        return 'M';
      case 1:
        return 'T';
      case 2:
        return 'W';
      case 3:
        return 'T';
      case 4:
        return 'F';
      case 5:
        return 'S';
      case 6:
        return 'S';
      default:
        return '';
    }
  }
}