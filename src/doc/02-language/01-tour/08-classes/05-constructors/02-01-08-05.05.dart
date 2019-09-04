/*
 * https://dart.dev/guides/language/language-tour#constructors
 */

void main() {
  fn01();
}

void fn01() {
  var c02 = C02.fn01('Foo');
  assert(c02.y == 'FOO');
  assert(c02.z == 'foo');
}

class C01 {
  String x;

  C01(this.x);

  C01.fn01(this.x) {
    print('C01.fn01()');
  }
}

class C02 extends C01 {
  String y = 'Y';
  final String z;

  /*
   * 在调用 super constructor 之前, 可以包含多个 initializer, 使用逗号分隔, 称之为 initializer list
   */
  C02.fn01(String y)
      : y = y.toUpperCase(),
        z = y.toLowerCase(),
        super.fn01('FOO') {
    print('C02.fn01()');
  }

  /*
   * initializer list 中可以包含 assert() 语句, 对参数进行校验
   */
  C02.fn02(String y)
      : assert(y.isNotEmpty),
        z = y.toLowerCase(),
        super.fn01('X') {}
}
