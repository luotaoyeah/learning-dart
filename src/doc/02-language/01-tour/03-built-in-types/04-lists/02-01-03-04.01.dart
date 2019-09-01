/*
 * https://dart.dev/guides/language/language-tour#lists
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * dart 中的 list 跟 js 中的 array 有一些类似
   */

  var list01 = [1, 2, 3];
  list01.add(4);
  assert(list01.length == 4);
  assert(list01[3] == 4);
}

void fn02() {
  /*
   * 使用 const 来声明一个值不可变的 list
   */

  var list01 = const [1, 2, 3];
  try {
    list01.add(4);
  } on UnsupportedError catch (e) {
    assert(e.message == 'Cannot add to an unmodifiable list');
  }
}
