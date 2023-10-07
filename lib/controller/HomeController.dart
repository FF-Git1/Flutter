import 'package:get/get.dart';

class HomeController extends GetxController {
  int count = 0;

  increment() {
    count++;
    update();
  }
}
