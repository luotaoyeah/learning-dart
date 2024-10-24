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
