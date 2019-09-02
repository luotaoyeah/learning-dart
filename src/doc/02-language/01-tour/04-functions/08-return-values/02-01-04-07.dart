/*
 * https://dart.dev/guides/language/language-tour#return-values
 */

void main() {
  fn01();
  fn02();
}

/*
 * 如果没有声明函数的返回类型(或者函数的返回类型声明为 dynamic), 并且函数没有返回数据, 则函数的返回值为 null
 */
void fn01() {
  fn01() {
    print('FOO');
  }

  var r01 = fn01();
  assert(r01 == null);

  dynamic fn02() {
    print('FOO');
  }

  var r02 = fn02();
  assert(r02 == null);
}

void fn02() {
  fn01() {
    print('BAR');
    return 9;
  }

  var r01 = fn01();
  assert(r01 == 9);
}
