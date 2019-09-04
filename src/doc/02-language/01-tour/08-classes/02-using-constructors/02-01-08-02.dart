/*
 * https://dart.dev/guides/language/language-tour#using-constructors
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * constructor 有两种: default constructor 和 named constructor,
   * 使用 constructor 创建实例对象时, 前面的 new 关键字可以省略
   */

  var c01 = new C01.fn01('FOO');
  var c02 = C01('FOO');

  assert(c01.name == c02.name);
}

class C01 {
  String name;

  C01(this.name);

  C01.fn01(this.name);
}
