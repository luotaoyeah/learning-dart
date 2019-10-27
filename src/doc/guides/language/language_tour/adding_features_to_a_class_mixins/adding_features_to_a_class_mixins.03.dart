/*
 * https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins
 */

void main() {
  fn01();
}

/// mixin 可以是一个 abstract class,
/// 此时不能使用 `mixin` 关键字来声明
abstract class Mixin01 {
  int fn01();

  int fn02() {
    return 9;
  }
}

/// 使用该 mixin 的 class 必须实现它的抽象方法
class C01 with Mixin01 {
  @override
  int fn01() {
    return 9;
  }
}

void fn01() {
  var c01 = C01();
  assert(c01.fn01() + c01.fn02() == 18);
}
