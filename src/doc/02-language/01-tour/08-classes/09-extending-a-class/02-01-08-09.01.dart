/*
 * https://dart.dev/guides/language/language-tour#extending-a-class
 */

void main() {
  fn01();
}

void fn01() {
  var c02 = C02(1, 2, 3);
  assert(c02.fn01() == 6);
}

class C01 {
  int x;
  int y;

  C01(this.x, this.y);

  int fn01() {
    return this.x + this.y;
  }
}

class C02 extends C01 {
  int z;

  C02(int x, int y, this.z) : super(x, y);

  int fn01() => super.fn01() + this.z;
}
