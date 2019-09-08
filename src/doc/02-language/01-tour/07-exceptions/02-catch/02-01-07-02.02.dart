/*
 * https://dart.dev/guides/language/language-tour#catch
 */

void main() {
  fn01();
}

void fn01() {
  try {
    dynamic v01 = true;
    v01 += 1;
  } catch (e, s) {
    /*
     * `catch (e, s)` 可以接收两个参数,
     * 第一个参数表示异常对象,
     * 第二个参数表示堆栈信息, 是一个 `StackTrace` 类型的对象
     */
    assert(e is Error);
    assert(s is StackTrace);
  }
}
