/*
 * https://dart.dev/guides/language/language-tour#getting-an-objects-type
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C01('FOO');

  /*
   * 可以使用 `runtimeType` 属性获取对象在运行时期的类型,
   * 它是一个 `Type` 类型的对象, 它的值等于该对象所属的类
   */
  assert(c01.runtimeType is Type);
  assert(c01.runtimeType == C01);

  assert("".runtimeType == String);
  assert(true.runtimeType == bool);
}

class C01 {
  String name;

  C01(this.name);
}
