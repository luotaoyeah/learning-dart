/*
 * https://dart.dev/guides/language/language-tour#functions
 */

import 'dart:math';

void main() {
  fn01();
  fn06();
}

/*
 * function 的返回类型可以省略, 但是不推荐
 */
fn01() {
  print('OMIT RETURN TYPE');
}

/*
 * 如果函数体中只有一条语句, 则可以使用如下的简写形式
 */

bool fn03() {
  return Random().nextBool();
}

bool fn04() => Random().nextBool();

var fn05 = () => Random().nextBool();

void fn06() => print('FOO');
