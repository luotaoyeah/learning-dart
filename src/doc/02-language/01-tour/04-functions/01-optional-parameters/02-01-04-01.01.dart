/*
 * https://dart.dev/guides/language/language-tour#optional-parameters
 */

import 'package:meta/meta.dart';

void main() {
  assert(fn01(x: 'FOO', y: 9) == 'FOO9');
  assert(fn01(y: 9) == 'NULL9');

  assert(fn02(y: 9) == 9);
  assert(fn02(y: 9, x: 9) == 18);
}

/*
 * 函数的参数有两种形式:
 *   named parameters
 *   positional parameters
 * 这两种形式不能同时使用
 */

/*
 * 使用如下的形式, 定义了两个 named parameters,
 * named parameter 表示传参的时候, 必须指定参数的名字, 而参数的顺序可以是任意的,
 * named parameters 默认都是可选的, 如果调用的时候没有传值, 则该参数的默认值为 null
 */
String fn01({String x, int y}) {
  return ((x != null ? x : 'NULL') + y.toString());
}

/*
 * 可以使用 @required 来标识一个参数是必须传的
 */
int fn02({int x, @required int y}) {
  return (x == null ? 0 : x) + y;
}
