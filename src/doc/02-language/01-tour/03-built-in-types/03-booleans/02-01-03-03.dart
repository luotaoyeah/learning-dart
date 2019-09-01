/*
 * https://dart.dev/guides/language/language-tour#booleans
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * 使用 bool 来定义布尔类型
   */

  bool b01 = true;
  bool b02 = false;

  assert(b01.toString() == 'true');
  assert(false.toString() == 'false');
}
