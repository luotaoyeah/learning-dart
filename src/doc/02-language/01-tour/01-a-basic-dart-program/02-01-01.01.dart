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
   *   $variable/${variable}
   *   ${expression}
   */
  print('$x * $x = ${x * x}');
}
