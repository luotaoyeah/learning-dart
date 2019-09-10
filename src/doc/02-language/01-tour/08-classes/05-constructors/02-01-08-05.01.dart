/*
 * https://dart.dev/guides/language/language-tour#constructors
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C01.fn01(9, 9);
  assert(c01.x == 9);
  assert(c01.y == 9);
}

class C01 {
  int x;
  int y;

  C01(int _x, int y) {
    /*
     * 如果参数名(_x)跟属性名(x)不同, 则不会有命名冲突, 则可以省略属性前面的 `this`
     */
    x = _x;
    this.y = y;
  }

  /*
   * 如果参数名(y)跟属性名(y)相同, 并且在 constructor 中直接将参数赋值给属性(`this.y = y;`),
   * 则可以使用如下的语法糖(this.y)
   */
  C01.fn01(int _x, this.y) {
    x = _x;
  }
}
