/*
 * https://dart.dev/guides/language/language-tour#sets
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * 使用 `const` 来定义一个不可变的 set
   */

  var set01 = const {1, 2, 3};
  try {
    set01.add(4);
  } on UnsupportedError catch (e) {
    assert(e.message == 'Cannot change unmodifiable set');
  }
}

void fn02() {
  /*
   * set 支持 spread operator (...) 和 null-aware spread operator (...?)
   */

  var set01 = null;
  var set02 = {1, 2, ...?set01};
  var set03 = {...set02, 3, 4};

  assert(set03.toString() == '{1, 2, 3, 4}');
}
