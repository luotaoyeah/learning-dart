/*
 * https://dart.dev/guides/language/language-tour#class-variables-and-methods
 */

void main() {
  fn01();
}

class C01 {
  /*
   * 静态属性的命名推荐使用 camelCase 格式
   */
  static int someStaticProperty = 9;
}

void fn01() {
  assert(C01.someStaticProperty == 9);
}
