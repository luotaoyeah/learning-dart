/*
 * https://dart.dev/samples#interfaces-and-abstract-classes
 */

void main() {
  C02 b = new C02();
  b.fn02();
}

/*
 * 使用关键字 abstract 声明一个 abstract class,
 * abstract class 不能被实例化, 只能被其他 class 继承
 */
abstract class C01 {
  /*
   * 在 abstract class 中声明一个没有方法体的 method, 称之为 abstract class, 它必须被 concrete class 实现
   */
  void fn01();

  void fn02() {
    print('-----');
    this.fn01();
    print('-----');
  }
}

/*
 * C02 是一个 concrete class, 则它必须实现 C01 中的 abstract method
 */
class C02 extends C01 {
  @override
  void fn01() {
    print('B');
  }
}

/*
 * C03 是一个 abstract class, 则它不用实现 C01 中的 abstract method
 */
abstract class C03 extends C01 {}
