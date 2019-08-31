/*
 * https://dart.dev/samples#exceptions
 */

import 'dart:math';

void main() {
  /*
   * 使用 `on SomeError` 来捕获指定的异常
   */
  try {
    fn01();
  } on StateError catch (e) {
    print('01: ' + e.message);
  } catch (e) {
    print('02: ' + e.toString());
  }
}

void fn01() {
  if (Random().nextBool()) {
    throw StateError('STATE ERR');
  } else {
    throw CastError();
  }
}
