/*
 * https://dart.dev/guides/language/language-tour#specifying-a-library-prefix
 */

/*
 * 如果不同的 library 定义了同名的对象, 则可以给每个 library 取一个别名, 使用 `as`
 */

import './02-01-10-01.02.01.dart' as lib01;
import './02-01-10-01.02.02.dart' as lib02;

void main() {
  fn01();
}

void fn01() {
  assert(lib01.foo() == 9);
  assert(lib02.foo() == 99);
}
