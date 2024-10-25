import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/operators#cascade-notation
  test('01', () {
    // cascade notation 的含义如下: 是一种语法糖, 用于连续访问同一个对象的多个属性或者方法,
    String s01 = 'hello world'.toUpperCase()
      ..substring(0, 5)
      ..contains('hello')
      ..indexOf('world');

    expect(s01 == 'HELLO WORLD', true);

    // 等价于下面这种写法,

    String s02 = 'hello world'.toUpperCase();
    s02.substring(0, 5);
    s02.contains('hello');
    s02.indexOf('world');

    expect(s02 == 'HELLO WORLD', true);
  });

  test('02', () {
    String? s01 = 'hello world';

    // 如果变量可能为空, 则第一个 cascade notation 需要写成 ?..
    s01
      ?..substring(0, 5)
      ..contains('hello')
      ..indexOf('world');

    expect(s01 == 'hello world', true);
  });
}
