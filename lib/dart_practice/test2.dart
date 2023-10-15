import 'package:flutterdemo/dart_practice/test.dart';

class TestChild extends TestDemo {
  TestChild({required super.x, required super.y});

  get childDistance => distance;
}