/*
 * https://dart.dev/guides/language/language-tour#arithmetic-operators
 */

void main() {
  fn01();
}

fn01() {
  /*
   * 运算符 ~/ 的含义为：
   *   相除之后, 将结果向下取整
   */

  assert(5 / 2 == 2.5);
  assert(5 ~/ 2 == 2);
}
