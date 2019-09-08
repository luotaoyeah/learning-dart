/*
 * https://dart.dev/guides/language/language-tour#importing-only-part-of-a-library
 */

/*
 * 可以选择只引入 library 中的某一部分对象,
 * 使用 `show` 表示引入某些对象, 使用 `hide` 表示不引入某些对象
 */

import './02-01-10-01.03.01.dart' as lib01 show foo, baz;
import './02-01-10-01.03.02.dart' hide foo;

void main() {
  fn01();
}

void fn01() {
  assert(lib01.foo() == 9);
  assert(bar() == 99);
}
