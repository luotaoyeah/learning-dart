/*
 * https://dart.dev/guides/language/language-tour#default-value
 */

void main() {
  /*
   * 由于 dart 中所有的值都是 object 类型, 如果一个变量没有初始化, 则它的默认值为 null
   */

  int i01;
  assert(i01 == null);

  String s01;
  assert(s01 == null);

  bool b01;
  assert(b01 == null);
}
