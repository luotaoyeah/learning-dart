/*
 * https://dart.dev/guides/language/language-tour#return-values
 */

void main() {
  fn01();
  fn02();
}

/*
 * 如果没有声明函数的返回类型(或者函数的返回类型声明为 dynamic), 并且函数没有返回数据, 则函数的返回值为 `null`
 */
void fn01() {
  fn01() {}

  assert(fn01() == null);

  dynamic fn02() {}

  assert(fn02() == null);
}

void fn02() {
  fn01() {
    return 9;
  }

  assert(fn01() == 9);
}
