
import 'package:get/get.dart';

class TapController extends GetxController{
  int _x=0;
  int get x=>_x;

  RxInt _y=0.obs;
  RxInt get y => _y;

  void increase(){
    _x++;
    update();
  }

  void decrease(){
    _x--;
    update();
  }

  void increaseY(){
    _y.value++;
   
  }

  void decreaseY(){
    _y.value--;
    
  }
   RxInt _z=0.obs;
  int get z=>_z.value;
  void totalxy(){
    _z.value=  x+y.value;
  }




}