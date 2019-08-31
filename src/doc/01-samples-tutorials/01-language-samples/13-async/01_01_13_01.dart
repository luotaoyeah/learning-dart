/*
 * https://dart.dev/samples#async
 */

import 'dart:async';

void main() {
  fn01('FOO');
  fn02('BAR');
}

/// 使用关键字 async/await 来实现异步编程
Future<void> fn01(String message) async {
  await Future.delayed(Duration(seconds: 1));
  print(message);
}

Future<void> fn02(String message) {
  return Future.delayed(Duration(seconds: 1)).then((_) {
    print(message);
  });
}
