/*
 * https://dart.dev/guides/language/language-tour#a-basic-dart-program
 */

void main() {
  int x = 9;
  fn01(x);
}

fn01(int x) {
  /*
   * string interpolation 有两种形式:
   *   1. $variable / ${variable}
   *     当表达式是一个变量时, 可以省略 {}
   *   2. ${expression}
   */
  print('$x * $x = ${x * x}');
}
