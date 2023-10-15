import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/HomeController.dart';

class MyHomePage extends StatelessWidget {
  var count = 0.obs;

  MyHomePage({super.key, required this.title});
  final String? title;



  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(() => HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
        child: Obx(() => Text("${count.value}")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("click"),
        onPressed: () => count++,
      ),
    );
  }
}
