/*
 * https://dart.dev/samples#interfaces-and-abstract-classes
 */

void main() {
  B b = new B('A', 'B');

  assert(b.a == 'A');
  assert(b.b == 'B');
}

/// dart 中没有专门的 interface,
/// 每一个 class 都是一个隐式的 interface, 可以被其他 class 实现
class A {
  String a;
}

class B implements A {
  @override
  String a;

  String b;

  B(this.a, this.b);
}
