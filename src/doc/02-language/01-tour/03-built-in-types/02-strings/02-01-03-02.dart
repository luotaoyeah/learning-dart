/*
 * https://dart.dev/guides/language/language-tour#strings
 */

void main() {
  fn01();
  fn02();
  fn03();
  fn04();
  fn05();
  fn06();
}

void fn01() {
  /*
   * string literal 可以使用单引号或者双引号包裹
   */

  String s01 = 'F';
  String s02 = "O";
}

void fn02() {
  /*
   * 在 string literal 中可以使用 ${expression} 或者 $variable 来嵌入表达式的值
   */

  int i01 = 9;
  String s01 = '$i01 * ${i01} = ${i01 * i01}';
  assert(s01 == '9 * 9 = 81');
}

void fn03() {
  /*
   * 可以使用 + 来连接多个字符串
   */

  String s01 = "F" + "O";
  String s02 = s01 + "O";
  assert(s02 == 'FOO');
}

void fn04() {
  /*
   * 可以直接将多个 string literal 挨着放置, 中间可以使用空格或者换行来分隔,
   * 其结果是将它们连接在一起,
   * 可以用这种方式来实现: 一个字符串跨越多行
   */

  String s01 = "F"
      "O"
      'O';
  assert(s01 == 'FOO');
}

void fn05() {
  /*
   * 还可以用 ''' 或者 """ 来包裹一个跨越多行的字符串,
   * 中间的空格和换行都会被保留
   */

  String s01 = '''
  F
  O
  O
  ''';
  assert(s01.length == 14);
}

void fn06() {
  /*
   * 字符串中默认支持转义字符
   */
  String s01 = "HELLO\tWORLD";
  print(s01);

  /*
   * 如果字符串前面加上 r 前缀, 表示这个字符串是一个 raw string,
   * 表示中间的转义字符会被当成普通字符
   */
  String s02 = r"HELLO\tWORLD";
  print(s02);
}
