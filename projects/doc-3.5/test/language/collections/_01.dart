import 'package:test/test.dart';

void main() {
  test("01", () {
    var list01 = [1, 2, 3];
  });

  test("02", () {
    // set literal 使用 {} 表示, 注意 map literal 也是使用 {} 表示,
    // {} 前面通过 <type> 指定 set 元素类型,
    var set01 = <String>{};
  });

  // https://dart.dev/language/collections#maps
  test("02", () {
    var map01 = <int, String>{};

    // 通过下标访问 map 的某个元素,
    map01[0] = 'A';

    // length 属性表示元素个数,
    expect(map01.length, 1);
  });
}
