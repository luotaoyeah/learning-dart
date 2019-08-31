/*
 * https://dart.dev/samples#classes
 */

void main() {
  C01 c01 = new C01('Foo');
  assert(c01.name == 'Foo');

  C01 c02 = new C01.lower('Foo');
  assert(c02.name == 'foo');

  C01 c03 = new C01.upper('Foo');
  assert(c03.name == 'FOO');
}

class C01 {
  String name;

  C01(this.name) {}

  /*
   * 除了 default constructor 之外, 还可以声明 named constructor,
   * named constructor 需要定义名称, 一个 class 中可以包含多个 named constructor
   */
  C01.lower(String name) {
    this.name = name.toLowerCase();
  }

  C01.upper(String name) {
    this.name = name.toUpperCase();
  }
}
