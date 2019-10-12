/*
 * https://dart.dev/guides/language/language-tour#lists
 */

void main() {
  fn01();
  fn02();
}

/// list 支持扩展运算符（...）
void fn01() {
  var list01 = [1, 2, 3];
  var list02 = [...list01, 4, 5, 6];
  assert(list02.length == 6);

  assert(list02[1] == 2);
}

/// 如果被扩展的 list 有可能为 `null`, 则应该使用 `...?` (null-aware spread operator),
/// 否则会抛异常
void fn02() {
  var list01;
  var list02 = [...?list01, 4, 5, 6];

  assert(list02.length == 3);
  assert(list02[0] == 4);
}
