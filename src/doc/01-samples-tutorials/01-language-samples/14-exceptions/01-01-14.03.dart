/*
 * https://dart.dev/samples#exceptions
 */

void main() async {
  /*
   * try/catch 可以捕获 async function 中抛出的异常
   */
  try {
    await fn01();
  } on StateError catch (e) {
    print('01: ' + e.message);
  }

  try {
    await fn02();
  } catch (e) {
    print('02: ' + e.message);
  }
}

Future<void> fn01() async {
  await Future.delayed(Duration(seconds: 1));
  throw new StateError('STATE ERR 01');
}

Future<void> fn02() {
  return Future.delayed(Duration(seconds: 1)).then((_) {
    throw new StateError('STATE ERR 02');
  });
}
