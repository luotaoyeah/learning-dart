/*
 * https://dart.dev/guides/language/language-tour#conditional-expressions
 */

void main() {
  fn01();
  fn02();
}

/*
 * `expr1 ?? expr2`
 * 这种表达式的含义是:
 *   如果 expr1 不为 `null`, 则返回 expr1
 *   如果 expr1 等于 `null`, 则返回 expr2
 */
void fn01() {
  int fn01(int x, int y) {
    return (x ?? 0) + (y ?? 0);
  }

  assert(fn01(null, null) == 0);
}

/*
 * 如下使用更复杂的代码实现跟 `??` 相同的效果
 */
void fn02() {
  int fn01(int x, int y) {
    return (x == null ? 0 : x) + (y != null ? y : 0);
  }

  assert(fn01(null, null) == 0);
}
