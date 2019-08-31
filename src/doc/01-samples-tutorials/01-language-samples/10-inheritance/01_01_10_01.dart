/*
 * https://dart.dev/samples#inheritance
 */

void main() {
  B b = new B('FOO', 9);
  assert(b.x == 'FOO');
  assert(b.y == 9);
}

class A {
  String x;

  A(this.x);
}

/// dart support single inheritance
class B extends A {
  int y;

  B(String x, int y) : super(x) {
    this.y = y;
  }
}
