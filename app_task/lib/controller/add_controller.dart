

import 'package:get/state_manager.dart';

class AddController extends GetxController{
   var categoryList = [
    'Development',
    'Researh',
    'Design',
    'Backend',
    'Business',
    'Marketing',
    'Finance',
  ];

  var selectedIndex = 0;
  void setIndex(int index) {
    selectedIndex = index;
    update();
  }
}