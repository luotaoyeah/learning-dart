/*
 * https://dart.dev/guides/language/language-tour#implicit-interfaces
 */

void main() {
  fn01();
}

void fn01() {
  var c03 = C03(9, 9, 9);

  assert(c03.fn01() == 27);
}

class C01 {
  int x;
  int y;

  int fn01() {
    return this.x + this.y;
  }
}

class C02 {
  int z;
}

/*
 * 每一个 class 都是一个隐式的 interface,
 * 每一个 class 可以实现多个 interface, 使用逗号分隔
 */
class C03 implements C01, C02 {
  @override
  int x;

  @override
  int y;

  @override
  int z;

  C03(this.x, this.y, this.z);

  @override
  int fn01() {
    return x + y + z;
  }
}
