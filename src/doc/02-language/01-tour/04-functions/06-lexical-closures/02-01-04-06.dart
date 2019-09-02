/*
 * https://dart.dev/guides/language/language-tour#lexical-closures
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * 如下示例, 实现一个闭包,
   * 当外部函数执行完毕并返回之后, 返回的内部函数可以捕获外部函数的参数,
   * 内部函数就成为该参数的一个闭包
   */

  int Function(int) fn01(int x) {
    return (int y) => x + y;
  }

  var fn02 = fn01(3);
  assert(fn02(3) == 6);

  int Function(int) fn03 = fn01(9);
  assert(fn03(3) == 12);
}
