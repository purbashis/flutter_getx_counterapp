import 'package:get/get.dart';

class CounterController extends GetxController {
  var couter = 0.obs;

  void increment() {
    couter++;
  }
}
