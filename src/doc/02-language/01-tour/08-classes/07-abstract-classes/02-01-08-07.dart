/*
 * https://dart.dev/guides/language/language-tour#abstract-classes
 */

void main() {
  fn01();
}

void fn01() {
  var c02 = C02(9, 9);
  assert(c02.fn01() == 18);
  assert(c02.fn02() == 0);
}

abstract class C01 {
  int x;
  int y;

  /*
   * abstract class 中既可以定义 concrete method, 也可以定义 abstract method
   */

  int fn01() {
    return x + y;
  }

  int fn02();
}

class C02 extends C01 {
  C02(int x, int y) {
    this.x = x;
    this.y = y;
  }

  @override
  int fn02() {
    return this.x - this.y;
  }
}
