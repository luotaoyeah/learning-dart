/*
 * https://dart.dev/guides/language/language-tour#numbers
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * 数字类型有两种, 继承关系如下:
   *   num
   *     int
   *     double
   */

  int i01 = 0;
  double pi = 3.14;

  num n01 = 9;
  n01 = 3.14;
}

void fn02() {
  int i01 = 9;
  assert(i01.toString() == '9');

  String s01 = '3.14';
  assert(double.parse(s01) == 3.14);
}
