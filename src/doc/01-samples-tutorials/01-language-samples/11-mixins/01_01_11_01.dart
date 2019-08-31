/*
 * https://dart.dev/samples#mixins
 */

void main() {
  C c = new C();

  c.a = 'A';
  c.b = 'B';
  c.c = 'C';

  assert(c.toString() == 'ABC');
}

/// 被作为 mixin 的 class 不能包含 constructor
class A {
  String a;
}

class B {
  String b;
}

///
/// class 可以使用关键字 with 实现 mixins,
/// with 后面可以有多个 class, 使用逗号分隔
class C with A, B {
  String c;

  @override
  String toString() {
    return this.a + this.b + this.c;
  }
}
