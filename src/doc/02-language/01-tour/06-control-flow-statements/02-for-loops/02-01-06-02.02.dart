/*
 * https://dart.dev/guides/language/language-tour#for-loops
 */

void main() {
  fn01();
  fn02();
}

/*
 * 对于 iterable 类型的数据（如 list/set）, 还可以使用 for/in 循环
 */
void fn01() {
  var set01 = {'a', 'b', 'c'};

  var list01 = [];
  for (var value in set01) {
    list01.add(value.toUpperCase());
  }
  assert(list01.toString() == '[A, B, C]');
}

void fn02() {
  var list01 = ['a', 'b', 'c'];

  var set01 = <String>{};
  for (var value in list01) {
    set01.add(value.toUpperCase());
  }
  assert(set01.toString() == '{A, B, C}');
}
