/*
 * https://dart.dev/guides/language/language-tour#catch
 */

void main() {
  fn01();
}

void fn01() {
  assert(throwSomething(1) == 'A');
  assert(throwSomething(2) == 'B');
  assert(throwSomething(3) == 'C');
}

class Exception01 implements Exception {}

class Exception02 implements Exception {}

String throwSomething(int type) {
  String result = '';

  try {
    switch (type) {
      case 1:
        throw Exception01();
      case 2:
        throw Exception02();
      default:
        throw Exception();
    }
  } on Exception01 {
    /*
     * 可以只使用 `on SomeException`, 表示当抛出的异常是 SomeException 类型时, 就执行此处的代码
     */
    result = 'A';
  } on Exception02 catch (e) {
    /*
     * 可以使用 `on SomeException catch (e)`, 表示当抛出的异常是 SomeException 类型时, 就执行此处的代码,
     * 并且通过 `catch (e)` 将异常对象捕获到了对象 e 中
     */
    result = 'B';
  } catch (e) {
    /*
     * 通常可以在最后使用一个 `catch (e)`,
     * 没有被上面的代码所捕获的其他任意类型的异常, 都会在此处被捕获
     */
    result = 'C';
  }

  return result;
}
