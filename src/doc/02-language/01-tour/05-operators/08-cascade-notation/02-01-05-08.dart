/*
 * https://dart.dev/guides/language/language-tour#cascade-notation-
 */

void main() {
  fn01();
  fn02();
}

/*
 * 级联符号 `..`
 * 用来对同一个对象连续执行多个操作
 */
void fn01() {
  var c01 = (C01()
    ..x = 9
    ..y = 9
    ..fn02()
    ..fn01());

  assert(c01.sum == 18);
}

/*
 * 如下, 不使用 `..` 来实现相同的效果, 需要定义一个额外的临时变量 c01
 */
void fn02() {
  var c01 = C01();
  c01.x = 9;
  c01.y = 9;
  c01.fn02();
  c01.fn01();

  assert(c01.sum == 18);
}

class C01 {
  int x = 0;
  int y = 9;

  int sum = 0;

  int fn01() {
    this.sum = this.x + this.y;
    return this.sum;
  }

  void fn02() {
    print('FOO');
  }
}
