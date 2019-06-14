/*
 * https://dart.dev/samples#imports
 */

/*
 * 使用关键字 import 来引入外部的代码
 */

import 'dart:math'; // 引入 core libraries

import "./01_01_08_01.dart"; // 引入外部的源文件

void main() {
  print(new Random().nextInt(100));

  fn01();
}
