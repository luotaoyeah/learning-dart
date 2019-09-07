/*
 * https://dart.dev/guides/language/language-tour#callable-classes
 */

void main() {
  fn01();
}

/*
 * 如果一个类中定义了 `call()` 方法, 则该类的实例可以被当成函数来调用
 */

class C01 {
  int x = 9;

  call(int y) {
    return this.x + y;
  }
}

void fn01() {
  C01 c01 = C01();
  assert(c01(9) == 18);
}
