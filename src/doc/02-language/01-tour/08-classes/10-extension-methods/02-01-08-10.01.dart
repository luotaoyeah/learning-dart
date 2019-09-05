/*
 * https://dart.dev/guides/language/language-tour#extension-methods
 */

void main() {
  fn01();
}

/*
 * 可以给已经存在的类型(比如第三方库)添加方法, 称之为 extension method
 */
extension on String {
  int toInt() {
    return int.parse(this);
  }
}

void fn01() {
  assert('42'.toInt() == 42);
}
