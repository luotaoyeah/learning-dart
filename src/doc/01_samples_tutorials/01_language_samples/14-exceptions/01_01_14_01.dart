/*
 * https://dart.dev/samples#exceptions
 */

import 'dart:math';

void main() {
  try {
    fn01();
  } catch (e) {
    print(e);
  } finally {
    print('FINALLY');
  }
}

/// 使用 throw 抛出一个 exception
void fn01() {
  if (Random().nextBool()) {
    throw StateError('ERR');
  }
}
