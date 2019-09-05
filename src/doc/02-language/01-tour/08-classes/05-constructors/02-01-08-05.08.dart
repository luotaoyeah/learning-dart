/*
 * https://dart.dev/guides/language/language-tour#factory-constructors
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C01.fn01();
  assert(c01.x == 9);
  assert(c01.y == 9);
}

class C01 {
  int x;
  int y;
  static C01 instance = C01(9, 9);

  C01(this.x, this.y);

  /*
   * 在定义 constructor 的时候, 如果前面加上 `factory`, 表示这是一个 factory constructor,
   * factory constructor 不一定会创建一个新的实例对象, 它可以返回一个已经存在的实例, 或者一个子类实例,
   * 因为没有创建一个新的实例, 因此构造函数里面不能访问 this
   */
  factory C01.fn01() {
    return C01.instance;
  }
}
