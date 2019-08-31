/*
 * https://dart.dev/samples#exceptions
 */

import 'dart:math';

void main() {
  /*
   * 使用 try/catch/finally 来捕获异常
   */
  try {
    fn01();
  } catch (e) {
    print(e);
  } finally {
    print('FINALLY');
  }
}

/*
 * 使用 throw 抛出一个异常
 */
void fn01() {
  if (Random().nextBool()) {
    throw StateError('ERR');
  }
}
