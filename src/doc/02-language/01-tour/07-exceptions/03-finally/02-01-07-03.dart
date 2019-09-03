/*
 * https://dart.dev/guides/language/language-tour#finally
 */

void main() {
  fn01();
}

void fn01() {
  /*
   * `finally {}` 中的代码, 无论是否抛出异常, 都会执行
   */

  try {
    throw Exception();
  } catch (e) {
    print('CATCH');
  } finally {
    print('FINALLY');
  }
}
