import 'package:get/get.dart';

class AppController extends GetxController{

  RxInt num=10.obs;
  RxBool isSet=true.obs;
  RxString name="".obs;
  RxDouble result=0.0.obs;

  void increase(){
    num++;
    print(num);
  }

  void decrease(){
    num--;
    print(num);
  }
}