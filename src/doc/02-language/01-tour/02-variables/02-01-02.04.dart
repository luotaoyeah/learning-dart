/*
 * https://dart.dev/guides/language/language-tour#final-and-const
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * `const` 用来声明一个常量(constant variable),
   * constant variable 必须在定义的时候赋初值,
   * constant variable 在定义之后不能再被赋值
   */
  const v01 = 0;
  // v01 = 9; // error: Constant variables can't be assigned a value.

  const int v02 = 9;
}

void fn02() {
  var arr01 = [1, 2, 3];
  arr01.add(4);
  assert(arr01.length == 4);

  /*
   * `const` 还可以用来定义一个 constant value,
   * constant value 表示它的值不能再被更改
   */
  try {
    var arr02 = const [1, 2, 3];
    arr02.add(4);
  } on UnsupportedError catch (e) {
    print(e.message);
  }
}
