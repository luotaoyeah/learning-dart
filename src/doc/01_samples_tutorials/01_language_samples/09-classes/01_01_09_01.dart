/*
 * https://dart.dev/samples#classes
 */

void main() {
  var foo = new Foo('FOO');

  assert(foo.name == 'FOO');
}

class Foo {
  // 声明一个字段
  String name;

  /*
   * 声明一个构造函数, 此处使用了语法糖,
   */
  Foo(this.name) {}
}
