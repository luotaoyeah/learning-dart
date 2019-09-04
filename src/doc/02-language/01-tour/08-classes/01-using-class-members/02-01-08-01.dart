/*
 * https://dart.dev/guides/language/language-tour#using-class-members
 */

void main() {
  fn01();
}

void fn01() {
  String str01;

  /*
   * 使用 `obj?.member` 来访问对象的成员, 如果对象为 null, 则结果也为 null, 并且不会报错
   */
  assert(str01?.toString() == null);
}
