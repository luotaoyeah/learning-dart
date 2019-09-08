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

/*
 * getter/setter 是一类特殊的 method,
 * instance variable 默认会创建它的 getter/setter,
 * 我们也可以显式地定义 getter/setter
 */
class C01 {
  double x;

  C01(this.x);

  /*
   * getter 可以定义成箭头函数的形式
   */
  double get square => x * x;

  /*
   * setter 可以定义成箭头函数的形式
   */
  set square(double value) => x = sqrt(value);
}

class C02 {
  double x;

  /*
   * getter 跟 method 的一个区别在于: 没有参数列表
   */
  double get square {
    double result = this.x * this.x;

    if (result < 0) {
      return 0;
    }

    return result;
  }

  set square(double value) {
    this.x = sqrt(value);
  }
}
