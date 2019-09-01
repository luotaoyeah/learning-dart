/*
 * https://dart.dev/guides/language/language-tour#sets
 */

void main() {
  fn01();
  fn02();
}

void fn01() {
  /*
   * set 是一个 "无序的", "元素唯一" 的列表
   */

  var set01 = {1, 2, 3};
  Set<int> set02 = {4, 5};
  set01.add(3);
  set01.add(4);
  set01.addAll(set02);

  assert(set01.length == 5);
  assert(set01.toString() == '{1, 2, 3, 4, 5}');
}

void fn02() {
  /*
   * 定义一个 empty set 有下面两种方式
   */

  var set01 = <int>{};
  Set<int> set02 = {};

  /*
   * 注意, 如下定义的是一个 empty map
   */
  var map01 = {};
}
