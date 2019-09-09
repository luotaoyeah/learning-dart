/*
 * https://dart.dev/guides/language/language-tour#conditional-expressions
 */

void main() {
  fn01();
  fn02();
}

/*
 * `x ??= y;` 等价于 `x = x ?? y;`, 表示:
 *   如果 `x` 不为 `null`, 则不进行任何操作
 *   如果 `x` 等于 `null`, 则将 `y` 赋值给 `x`
 */
void fn01() {
  int fn01(int x) {
    x ??= 99;
    return x;
  }

  assert(fn01(9) == 9);
  assert(fn01(null) == 99);
}

void fn02() {
  int fn01(int x) {
    x = x ?? 99;
    return x;
  }

  assert(fn01(9) == 9);
  assert(fn01(null) == 99);
}
