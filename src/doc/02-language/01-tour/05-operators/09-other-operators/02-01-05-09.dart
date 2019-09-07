/*
 * https://dart.dev/guides/language/language-tour#other-operators
 */

void main() {
  fn01();
}

/*
 * `?.` 跟 `.` 的区别在于:
 *   如果 x.y 中的 x 为 `null`, 则会报错,
 *   如果 x?.y 中的 x 为 `null`, 不会报错, 结果为 `null`
 */
void fn01() {
  var v01 = null;

  assert(v01?.x() == null);

  var err;
  try {
    v01.x();
  } catch (e) {
    err = e;
  }
  assert(err is NoSuchMethodError);
}
