/*
 * https://dart.dev/guides/language/language-tour#assert
 */

void main() {
  fn01();
}

/*
 * assert() 语句用来判断某个条件是否成立, 如果条件不成立, 则会抛出一个错误,
 * 在生产环境中, assert() 语句不会执行
 */
void fn01() {
  assert(1 > 2, 'SOME ASSERTION MESSAGE');
}
