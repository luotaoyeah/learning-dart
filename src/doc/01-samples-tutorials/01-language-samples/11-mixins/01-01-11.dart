/*
 * https://dart.dev/samples#mixins
 */

void main() {
  C01 c = new C01();

  c.a = 'A';
  c.b = 'B';
  c.c = 'C';

  assert(c.toString() == 'ABC');
}

/*
 * class 可以使用关键字 with 实现 mixins, with 后面可以有多个 class, 使用逗号分隔
 */
class C01 with A, B {
  String c;

  @override
  String toString() {
    return this.a + this.b + this.c;
  }
}

/*
 * 被作为 mixin 的 class 不能包含 constructor
 */
class A {
  String a;
}

class B {
  String b;
}
