import 'package:test/test.dart';

String description;

void main() {
  // https://dart.dev/language/variables
  test("01", () {
    // 使用 var 声明变量, 则变量的类型会自动进行推断,
    var v01 = 'A';
    String v02 = 'A';
    Object v03 = 'A';

    expect(v02 == v01, true);
    expect(v02 == v03, true);
  });

  // https://dart.dev/language/variables#null-safety
  test("02", () {
    // 类型后面加上 ? 表示该变量可以为 null,
    // 可空变量(nullable variable)的默认值就是 null, 因此不需要赋初值,
    String? v01;

    expect(v01 == null, true);

    // 当变量可能为 null 时, 访问它的属性或者方法时, 必须用 ?.
    expect(v01?.toUpperCase() == null, true);

    v01 = 'a';
    expect(v01.toUpperCase() != null, true);
  });

  // https://dart.dev/language/variables#default-value
  test("03", () {
    int i01;

    // 不可为空的变量, 在使用它之前必须先赋值,
    i01 = 0;

    expect(i01 == 0, true);
  });
}
