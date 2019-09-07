/*
 * https://dart.dev/guides/language/language-tour#variables
 */

void main() {
  fn01();
  fn02();
  fn03();
}

void fn01() {
  /*
   * 使用 `var` 声明变量, 变量的类型会被自动推断
   */
  var v01 = "FOO";
  assert(v01 is String);

  /*
   * 显式声明变量的类型
   */
  String v02 = "BAR";
  assert(v02 is String);
}

/**
 * 如果变量的类型声明为 `dynamic`, 表示变量的类型是可变的, 可以给变量赋值不同类型的值,
 * 类似于 TS 中的 `any` 类型
 */
void fn02() {
  dynamic v03 = 'BAZ';
  assert(v03 is String);

  v03 = 9;
  assert(v03 is int);

  v03 = true;
  assert(v03 is bool);
}

/**
 * 如果变量的类型声明为 `Object`, 表示可以给变量赋值任意类型的值
 */
void fn03() {
  Object v04 = "FOO";
  assert(v04 is String);

  v04 = 9;
  assert(v04 is int);
}
