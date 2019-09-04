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
 * constructor 有两种: default constructor 和 named constructor
 * default constructor 最多只能有一个,
 * 如果没有声明, 则会隐式地声明一个参数列表为空的 default constructor,
 * 这个 constructor 会调用父类中的参数列表为空的 default constructor,
 * 因此, 如果父类的 default constructor 参数列表不为空, 则子类必须显式定义 default constructor, 不能省略
 */
class C02 extends C01 {}
