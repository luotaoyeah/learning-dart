/*
 * https://dart.dev/guides/language/language-tour#lists
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * list 支持扩展运算符（...）
   */

  var list01 = [1, 2, 3];
  var list02 = [...list01, 4, 5, 6];
  assert(list02.length == 6);

  assert(list02[1] == 2);
}

void fn02() {
  /*
   * 如果被扩展的 list 可能为 null, 则应该使用 ...? (null-aware spread operator)
   */

  var list01;
  var list02 = [...?list01, 4, 5, 6];

  assert(list02.length == 3);
  assert(list02[0] == 4);
}
