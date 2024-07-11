import 'package:get/get.dart';

class PageGetController extends GetxController{
  int index = 0;
  


  void changeindex(int i){
      index = i;
      update();
  }

}