/*
 * https://dart.dev/guides/language/language-tour#abstract-methods
 */

void main() {
  fn01();
}

void fn01() {}

/*
 * 使用 `abstract` 来定义一个 abstract class
 */
abstract class C01 {
  /*
   * 如果 method 没有 body, 则它是一个 abstract method,
   * abstract method 必须位于 abstract class 中
   */
  int calc(int x, int y);
}

/*
 * 如果子类是一个 concrete class, 则它必须实现父类中的 abstract method
 */
class C02 extends C01 {
  @override
  int calc(int x, int y) {
    return x + y;
  }
}

/*
 * 如果子类也是一个 abstract class, 则它可以不实现父类中的 abstract method
 */
abstract class C03 extends C01 {}
