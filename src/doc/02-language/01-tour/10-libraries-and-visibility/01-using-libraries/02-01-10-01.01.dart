/*
 * https://dart.dev/guides/language/language-tour#using-libraries
 */

/*
 * 使用 `import 'URI'` 来引入一个 library, 其中 URI 有三种形式:
 *   1. `import 'dart:xxx'` 表示引入的是 dart 内置的 library
 *   2. `import 'package:xxx'` 表示引入的是第三方库
 *   3. `import '../../xxx'` 表示引入的是本地文件
 */

import 'dart:math';

import 'package:meta/meta.dart';

import './02-01-10-01.01.01.dart';

void main() {
  fn01();
}

void fn01() {
  assert(Random().nextInt(9) > -1);
  assert(required != null);
  assert(foo() == 9);
}
