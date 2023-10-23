

import 'package:flutterdemo/dart_practice/behavior.dart';

mixin TestMixin implements Behavior{
  say() {
    print("TestMixin say");
  }

  walk() {
    print("TestMixin walk");
  }
}
