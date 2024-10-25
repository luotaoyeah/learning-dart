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
}
