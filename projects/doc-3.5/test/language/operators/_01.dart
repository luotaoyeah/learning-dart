import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/operators#arithmetic-operators
  test("01", () {
    expect(5 / 2 == 2.5, true);

    // 运算符 ~/ 表示除法运算之后取整,
    expect(5 ~/ 2 == 2, true);
    expect(5.8 ~/ 2 == 2, true);
  });
}
