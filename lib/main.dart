import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx/page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MyHomePage(title: "home"),
    );
  }
}
