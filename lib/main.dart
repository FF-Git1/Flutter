import 'package:flutter/material.dart';
import 'package:flutterdemo/page/homepage.dart';
import 'package:get/get.dart';

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
