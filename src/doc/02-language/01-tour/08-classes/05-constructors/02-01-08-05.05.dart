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

  /*
   * 构造函数的参数列表括号跟函数体之间, 可以包含多个 initializer, 使用逗号分隔, 称之为 initializer list
   */
  C01.fn01() : x = "X" {}

  C01.fn02(this.x) {
    print('C01.fn01()');
  }
}

class C02 extends C01 {
  String y = 'Y';
  final String z;

  /*
   * 如果调用了 super constructor, 则 super constructor 必须放在 initializer list 的最后面, 使用逗号分隔
   */
  C02.fn01(String y)
      : y = y.toUpperCase(),
        z = y.toLowerCase(),
        super.fn02('FOO') {
    print('C02.fn01()');
  }

  /*
   * initializer list 中可以包含 assert() 语句, 对参数进行校验
   */
  C02.fn02(String y)
      : assert(y.isNotEmpty),
        z = y.toLowerCase(),
        super.fn02('X') {}
}
