/*
 * https://dart.dev/samples#imports
 */

/*
 * 使用关键字 import 来引入外部的代码
 */

import 'dart:math'; // 引入 core library

import "./01-01-08.01.dart"; // 引入外部的代码文件

void main() {
  Random random = new Random();
  print(random.nextInt(100));

  fn01();
}
