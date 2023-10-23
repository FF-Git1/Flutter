

import 'package:flutterdemo/dart_practice/behavior.dart';

import 'mixin_test.dart';

class Mixins extends Behavior with TestMixin {

}

class Mixins2 implements  Behavior {
  @override
  void say() {
    print("Mixins2 walk");
  }

  @override
  void walk() {
    print("Mixins2 walk");
  }
}