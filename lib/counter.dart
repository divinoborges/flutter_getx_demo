import 'package:get/get.dart';

class Counter extends GetxController {
  Rx<int> _counter = 0.obs;

  void increment() {
    _counter.value++;
  }

  int get value => _counter.value;
}