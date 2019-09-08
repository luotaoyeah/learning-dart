/*
 * https://dart.dev/guides/language/language-tour#constructors
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C02.fn01();
  assert(c01.x == 'FOO');

  var c02 = C02.fn02('BAR');
  assert(c02.x == 'X');
}

class C01 {
  String x;

  C01(this.x);

  C01.fn01(this.x) {
    print('C01.fn01()');
  }
}

/*
 * 子类的 constructor 中必须调用父类的 constructor,
 * 如果没有显式调用, 则会默认调用父类的 no-argument default constructor,
 * 因此如果父类没有 no-argument default constructor, 则子类的 constructor 必须显式调用父类的某个 constructor
 */
class C02 extends C01 {
  String y = 'Y';

  C02.fn01() : super('FOO');

  /*
   * 代码的执行顺序如下:
   *   1. initializer list
   *   2. super-class constructor
   *   3. sub-class constructor
   */
  C02.fn02(this.y) : super.fn01('X') {
    print('C02.fn02()');
  }
}
