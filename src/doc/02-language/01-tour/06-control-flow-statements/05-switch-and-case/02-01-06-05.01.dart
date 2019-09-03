/*
 * https://dart.dev/guides/language/language-tour#switch-and-case
 */

import 'dart:math';

void main() {
  fn01();
}

void fn01() {
  int random = Random().nextInt(100);

  switch (random) {
    case 0:
      print('ZERO');
      /*
       * 如果 case 是非空的, 即下面有其他的语句,
       * 则必须使用 break/continue/return/throw/rethrow 中的某一个来终止
       */
      break;
    /*
     * 如果 case 是空的, 则会穿透到下一个 case
     */
    case 1:
    case 2:
      /*
       * case 下面可以定义变量, 作用域属于当前 case
       */
      {
        int i01 = 9;
        print(random * i01);
        return;
      }
    default:
      print('DEFAULT');
  }
}
