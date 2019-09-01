/*
 * https://dart.dev/guides/language/language-tour#functions
 */

import 'dart:math';

void main() {
  fn01();
}

/*
 * function 的返回类型可以省略, 但是不推荐
 */
fn01() {
  print('OMIT RETURN TYPE');
}

/*
 * 如果函数中所有的内容, 只是返回一个表达式, 则可以使用如下的简写形式
 */

bool fn03() {
  return Random().nextBool();
}

bool fn04() => Random().nextBool();

/*
 * 上面这种形式跟箭头函数, 有些类似
 */
var fn05 = () => Random().nextBool();
