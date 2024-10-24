import 'package:test/test.dart';

void main() {
  // https://dart.dev/language#classes
  test('01', () {
    // 创建类的实例时不需要使用 new 关键字
    expect(C01.name03().name, 'HELLO');
  });

  // https://dart.dev/language#enums
  test('02', () {
    expect(E02.A.toString(), 'E02.A');
  });

  // https://dart.dev/language#mixins
  test('03', () {
    expect(C02().x, 9);
    expect(C02().y, 9);
    expect(C02().z, 9);
  });
}

class C01 {
  String? name;

  C01(String name) {
    this.name = name;
  }

  // named constructor
  C01.name01(String name) {
    this.name = name;
  }

  // initializing formal parameter
  C01.name02(this.name);

  C01.name03() : this.name02('HELLO');
}

enum E01 { A, B, C }

enum E02 {
  A('A');

  final String? name;

  const E02(this.name);
}

mixin M01 {
  int x = 9;

  int fn01() {
    return 9;
  }
}

mixin M02 {
  int z = 9;
}

class C02 with M01, M02 {
  int y = 9;

  int fn02() {
    return 9;
  }
}

// 每个 class 都是一个隐式的 interface,
class C03 implements C02 {
  @override
  int x = 8;

  @override
  int y = 8;

  @override
  int z = 8;

  @override
  int fn01() {
    throw UnimplementedError();
  }

  @override
  int fn02() {
    // TODO: implement fn02
    throw UnimplementedError();
  }
}

// abstract class
abstract class C04 {
  // abstract function
  void fn01();

  // concrete function
  void fn02() {}
}
