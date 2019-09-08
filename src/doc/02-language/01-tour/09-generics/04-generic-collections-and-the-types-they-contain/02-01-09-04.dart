/*
 * https://dart.dev/guides/language/language-tour#generic-collections-and-the-types-they-contain
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * 可以在运行时期查看对象所属的泛型类型
   */

  var list01 = List<int>();
  assert(list01 is List<int>);
  assert(list01.runtimeType.toString() == 'List<int>');
}
