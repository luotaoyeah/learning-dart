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
  test("03", () {
    var map01 = <int, String>{};

    // 通过下标访问 map 的某个元素,
    map01[0] = 'A';

    // length 属性表示元素个数,
    expect(map01.length, 1);
  });

  // https://dart.dev/language/collections#control-flow-operators
  test(
    '04',
    () {
      // 在 list literal 中使用 collection if 语法, 根据条件决定是否插入某个元素,
      var list01 = [1, 2, if (true) 3, if (false) 4];
      expect(list01.length, 3);

      // 在 list literal 中使用 collection for 语法, 循环插入元素,
      var list02 = [1, for (int i in list01) i];
      expect(list02.toString(), '[1, 1, 2, 3]');
    },
  );
}
