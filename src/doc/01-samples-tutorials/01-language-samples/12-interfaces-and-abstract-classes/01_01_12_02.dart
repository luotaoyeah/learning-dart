/*
 * https://dart.dev/samples#interfaces-and-abstract-classes
 */

void main() {
  B b = new B();
  b.b();
}

/// 使用关键字 abstract 声明一个 abstract class,
/// abstract class 不能被实例化, 只能被其他 class 继承
abstract class A {
  /// 在 abstract class 中声明一个没有方法体的 method,
  /// 称之为 abstract class, 它必须被 concrete class 实现
  void a();

  void b() {
    print('-----');
    this.a();
    print('-----');
  }
}

class B extends A {
  @override
  void a() {
    print('B');
  }
}
