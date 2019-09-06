/*
 * https://dart.dev/guides/language/language-tour#importing-only-part-of-a-library
 */

/*
 * 可以选择只引入 library 中的某一部分对象
 */

import './02-01-10-01.03.01.dart' as lib01 show foo;
import './02-01-10-01.03.02.dart' as lib02 hide foo;

void main() {
  fn01();
}

void fn01() {
  assert(lib01.foo() == 9);
  assert(lib02.bar() == 99);
}
