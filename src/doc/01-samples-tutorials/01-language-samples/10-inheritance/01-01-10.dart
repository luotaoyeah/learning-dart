/*
 * https://dart.dev/samples#inheritance
 */

void main() {
  C02 b = new C02('FOO', 9);
  assert(b.x == 'FOO');
  assert(b.y == 9);
}

class C01 {
  String x;

  C01(this.x);
}

/*
 * class 支持单一继承, 只能继承一个父类
 */
class C02 extends C01 {
  int y;

  C02(String x, int y) : super(x) {
    this.y = y;
  }
}
