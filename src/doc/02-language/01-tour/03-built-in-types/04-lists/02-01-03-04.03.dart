/*
 * https://dart.dev/guides/language/language-tour#lists
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * collection if
   * 指的是根据条件来决定是否添加某个元素
   */
  var b01 = true;
  var b02 = false;

  var list01 = [1, 2, if (b01) 3, if (b02) 4];
  assert(list01.toString() == '[1, 2, 3]');
}

void fn02() {
  /*
   * collection for
   * 指的是循环一个列表（下面的 list01）, 将它的元素添加到另外一个列表（下面的 list02）, 在循环的过程中, 可以对元素进行修改
   */

  var list01 = [1, 2, 3];
  var list02 = ['#0', for (int i in list01) '#${i}'];
  assert(list02.toString() == '[#0, #1, #2, #3]');
}
