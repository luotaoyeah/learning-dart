/*
 * https://dart.dev/guides/language/language-tour#using-collection-literals
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * List/Set/Map 都是支持泛型的, 那么在使用它们的 literal 时, 如何指定类型?
   * 在 literal 前面加上 `<Type>` / `<KeyType, ValueType>`
   */
  var list01 = <int>[1, 2, 3];
  var set01 = <int>{1, 2, 3};
  var map01 = <String, int>{'0': 0, '1': 1};
}
