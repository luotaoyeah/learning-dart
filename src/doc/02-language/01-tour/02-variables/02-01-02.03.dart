/*
 * https://dart.dev/guides/language/language-tour#final-and-const
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * 变量声明为 `final`, 则必须进行初始化
   */
  final int i01 = 9;

  /*
   * `final` 变量声明之后不能再被赋值, 否则报错
   */
  //  i01 = 99; // error: 'i01', a final variable, can only be set once.

  /*
   * 变量声明为 `final` 时, 可以省略类型或者 `var` 关键字
   */
  final i02 = 9;
}

class C01 {
  /*
   * 类的字段可以声明为 `final` 字段
   */
  final name = '';
  final int age = 0;
  final String x;

  /*
   * 可以如下对某个 `final` 字段进行初始化
   */
  C01(this.x);

  /*
   * 可以如下对某个 `final` 字段进行初始化
   */
  C01.ctor01() : this.x = 'X';

  /*
   * 方法的参数可以声明为 `final`
   */
  void fn01(final int p01) {}
}
