/*
 * https://dart.dev/samples#classes
 */

void main() {
  C01 c = new C01();
  assert(c.fn01() == 9);
}

class C01 {
  /*
   * 定义一个方法
   */
  int fn01() {
    return 9;
  }
}
