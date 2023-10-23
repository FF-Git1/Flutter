class TestClazz {
  Iterable<String> func(int count) sync* {
    Runes first = Runes('\u{1f47f}');
    for (int i = 0; i < count; i++) {
      yield String.fromCharCodes(first.map((e) => e + i));
    }
  }

  asyncFun() async {
    await Future.delayed(const Duration(seconds: 2));
    print("加载3---${DateTime.now().toIso8601String()}");
  }

  Stream<String> asyncGet(int count) async* {
    Runes first = Runes('\u{1f47f}');
    for (int i = 0; i < count; i++) {
      yield await asyncSingle(i, first);
    }
  }

  Future<String> asyncSingle(int i, Runes runes) async {
    await Future.delayed(const Duration(seconds: 1));
    return String.fromCharCodes(runes.map((e) => e + i));
  }
}

main() {
  var test = TestClazz();
  // test.func(10).forEach(print);
  test.asyncGet(10).forEach(print);
  print("加载1---${DateTime.now().toIso8601String()}");
  test.asyncFun();
  print("加载2---${DateTime.now().toIso8601String()}");
}
