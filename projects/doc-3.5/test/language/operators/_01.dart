import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/operators#arithmetic-operators
  test("01", () {
    expect(5 / 2 == 2.5, true);

    // 运算符 ~/ 表示除法运算之后取整,
    expect(5 ~/ 2 == 2, true);
    expect(5.8 ~/ 2 == 2, true);
  });

  // https://dart.dev/language/operators#equality-and-relational-operators
  test("02", () {
    // 父类 Object 中, == 运算符默认比较的是两个变量是否是同一个对象,
    // 在具体的其他类中, 通常可以覆写 == 运算符, 实现该类自己的比较逻辑, 比如 String 类就覆写了 == 运算符,
    String s01 = 'A';
    String s02 = 'A';
    expect(s01 == s02, true);
    expect(identical(s01, s02), true);
  });

  // https://dart.dev/language/operators#assignment-operators
  test('03', () {
    String value = 'A';

    String? a;
    String b = 'B';

    // 操作符 a ??= value 的含义: 如果 a 为 null, 则将 value 赋值给 a, 否则不做操作,
    a ??= value;
    b ??= value;

    expect(a == 'A', true);
    expect(b == 'B', true);
  });

  // https://dart.dev/language/operators#conditional-expressions
  test('04', () {
    // 操作符 a ?? b 的含义: 如果 a 不为 null, 则表达式的值为 a, 否则为 b,

    String? a;
    String b = 'B';
    String c = a ?? b;

    expect(c == 'B', true);
  });
}
