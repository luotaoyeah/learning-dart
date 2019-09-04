/*
 * https://dart.dev/guides/language/language-tour#constant-constructors
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * 调用 constant constructor 时, 前面可以加 const, 也可以不加,
   * 加 const 表示创建的是一个 constant instance,
   * 不加 const 表示把这个 constant constructor 当成普通的 constructor 使用, 创建的是一个 non-constant instance
   */
  var c01 = const C01.fn02(9, 9);
  var c02 = C01.fn02(9, 9);

  assert(c01 != c02);
}

class C01 {
  final int x;
  final int y;

  C01.fn01(this.x, this.y);

  /*
   * 在定义 constructor 的时候, 如果 constructor 前面加上 `const`, 表示这是一个 constant constructor,
   * 要定义一个 constant constructor, 则该类的所有属性必须都是 final 属性
   */
  const C01.fn02(this.x, this.y);
}
