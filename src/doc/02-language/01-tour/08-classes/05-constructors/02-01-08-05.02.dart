/*
 * https://dart.dev/guides/language/language-tour#constructors
 */

void main() {
  fn01();
}

void fn01() {}

class C01 {
  int x;

  C01();

  C01.fn01(this.x);
}

/*
 * constructor 有两种:
 *   1. default constructor
 *   2. named constructor
 *
 * default constructor 最多只能有一个,
 * 如果没有声明, 则会隐式地声明一个 no-argument default constructor,
 * 这个 constructor 会调用父类中的 no-argument default constructor,
 * 因此, 如果父类没有 no-argument default constructor, 则子类必须显式定义 default constructor, 不能省略
 */
class C02 extends C01 {}
