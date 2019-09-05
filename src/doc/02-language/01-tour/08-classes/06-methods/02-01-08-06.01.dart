/*
 * https://dart.dev/guides/language/language-tour#getters-and-setters
 */

import 'dart:math';

void main() {
  fn01();
}

void fn01() {
  var c01 = C01(9);
  assert(c01.square == 81);

  c01.square = 64;
  assert(c01.x == 8);
}

class C01 {
  /*
   * getter/setter 是一类特殊的 method,
   * instance variable 默认会创建它的 getter/setter,
   * 我们也可以显式地定义 getter/setter
   */

  double x;

  C01(this.x);

  double get square => x * x;

  set square(double value) => x = sqrt(value);
}
