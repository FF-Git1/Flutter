import 'dart:math';

import 'package:flutterdemo/dart_practice/mixins_test.dart';

class TestDemo {
  int x;
  int y;

  TestDemo({required this.x, required this.y});

  @override
  bool operator ==(Object other) {
    if (other is TestDemo) {
      return other.x == x && other.y == y;
    }
    return super == other;
  }

  TestDemo operator +(TestDemo other) {
    return TestDemo(x: x + other.x, y: y + other.y);
  }

  get distance => sqrt(x * x + y * y);

  set b(TestDemo o) {
    x = o.x;
    y = o.y;
  }

  @override
  noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

main() {
  var test = TestDemo(x: 1, y: 2);
  var test2 = TestDemo(x: 3, y: 4);
  var test3 = test + test2;
  test3.b = TestDemo(x: 3, y: 4);
  var mix = Mixins();
  var mix2 = Mixins2();
  mix.say();
  mix2.say();
  mix.walk();
  mix2.walk();
  print("d1 = ${test.distance} -- ${test.runtimeType}, d2 = ${test2.distance}, d3 = ${test3.distance}");
}
