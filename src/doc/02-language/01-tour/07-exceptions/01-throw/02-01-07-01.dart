/*
 * https://dart.dev/guides/language/language-tour#throw
 */

void main() {
  fn01();
  fn02();
}

/*
 * dart 中的 exception 都是 unchecked exception,
 * 即不需要在方法签名中声明该方法可能会抛出的异常
 */
void fn01() {
  /*
   * 异常/错误的基类有两个, `Exception` / `Error`
   */

  int i01 = 0;

  if (i01 == 1) {
    throw Error();
  } else if (i01 == 2) {
    throw Exception();
  }
}

void fn02() {
  /*
   * throw 可以抛出任意类型的对象, 不一定是 `Exception` / `Error` 类型的对象
   */

  int i01 = 0;

  if (i01 == 1) {
    throw '1';
  } else if (i01 == 2) {
    throw 2;
  }
}
