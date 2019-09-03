/*
 * https://dart.dev/guides/language/language-tour#catch
 */

void main() {
  fn01();
}

void fn01() {
  String result = '';

  try {
    try {
      dynamic v01 = true;
      v01 += 1;
    } on NoSuchMethodError catch (e) {
      result += 'A';

      /*
       * 可以使用 rethrow 将异常重新抛出, 外层的代码就可以再次捕获该异常
       */
      rethrow;
    }
  } on NoSuchMethodError catch (e) {
    result += 'B';
  }

  assert(result == 'AB');
}
