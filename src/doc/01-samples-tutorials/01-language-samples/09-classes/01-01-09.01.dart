/*
 * https://dart.dev/samples#classes
 */

void main() {
  var c01 = new C01("FOO");
  assert(c01.name == 'FOO');

  C02 c02 = new C02('BAR');
  assert(c02.name == 'BAR');
}

class C01 {
  // 声明一个字段
  String name;

  /*
   * 下面这种形式的 constructor 称之为 default constructor,
   * 一个 class 中最多只能有一个 default constructor
   */
  C01(String name) {
    this.name = name;
  }
}

class C02 {
  String name;

  /*
   * 如果构造函数的参数名称跟字段名称一样, 可以使用如下的语法糖, 表示将改参数赋值给同名的字段
   */
  C02(this.name) {}
}
