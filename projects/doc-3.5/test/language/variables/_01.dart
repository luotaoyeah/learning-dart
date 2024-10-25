import 'package:test/test.dart';

// late 关键字的第一种用法:
//     对于 top level 变量和 instance variable, 如果他们不能为空,
//     并且他们的赋值是在他们的声明之后, 则 dart 无法判断他们已经被赋值了, 需要我们手动添加 late 关键字告诉 dart 他们已经赋值了,
//     当然如果实际上他们确实没有赋值, 则在运行时会抛出错误,
late String description;

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

  // https://dart.dev/language/variables#late-variables
  test("04", () {
    description = 'HELLO';
    print(description);

    // late 关键字的第二种用法,
    //     用于变量的延迟初始化,

    // 如下, fn01() 会被立即调用,
    String s01 = fn01();

    // 如下, fn02() 不会被立即调用, 而是在 s02 被使用的时候才会调用,
    late String s02 = fn02();
  });
}

String fn01() {
  print('fn01()');

  return 'fn01';
}

String fn02() {
  print('fn02()');

  return 'fn02';
}
