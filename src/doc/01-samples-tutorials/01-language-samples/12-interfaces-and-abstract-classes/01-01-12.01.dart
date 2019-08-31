/*
 * https://dart.dev/samples#interfaces-and-abstract-classes
 */

void main() {
  C02 c02 = new C02('A', 'B');

  assert(c02.a == 'A');
  assert(c02.b == 'B');
}

/*
 * dart 没有专门的 interface, 每一个 class 都是一个隐式的 interface, 可以被其他的 class 实现
 */
class C01 {
  String a;
}

class C02 implements C01 {
  @override
  String a;

  String b;

  C02(this.a, this.b);
}
