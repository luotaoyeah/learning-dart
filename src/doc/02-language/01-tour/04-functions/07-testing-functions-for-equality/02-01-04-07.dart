/*
 * https://dart.dev/guides/language/language-tour#testing-functions-for-equality
 */

void main() {
  fn01();
  fn02();
}

/*
 * 可以使用 == 比较 function/method 的相等性
 */
void fn01() {
  var x;
  var y = () => 0;
  x = y;

  assert(x == y);
}

class C01 {
  static fn01() {}

  fn02() {}
}

/*
 * 不同实例对象的同名方法, 并不是同一个对象, 并不相等
 */
void fn02() {
  var c01 = C01();
  var c02 = C01();

  assert(c01.fn02 != c02.fn02);
}
