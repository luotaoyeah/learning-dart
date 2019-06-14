/*
 * https://dart.dev/samples#classes
 */

void main() {
  var c = new C.name('FOO');
  assert(c.name == 'FOO');
}

class C {
  String name;

  /// 声明一个命名的构造函数(named constructor)
  C.name(String name) {
    this.name = name;
  }
}
