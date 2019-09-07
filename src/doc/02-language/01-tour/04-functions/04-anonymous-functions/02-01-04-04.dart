/*
 * https://dart.dev/guides/language/language-tour#anonymous-functions
 */

void main() {
  fn01();
}

/*
 * 通常, 回调函数可以声明为一个匿名函数
 */
void fn01() {
  var list = ['a', 'b', 'c'];

  /*
   * 匿名函数的参数可以省略类型
   */
  list.forEach((item) {
    print(item.toUpperCase());
  });

  /*
   * 如果函数体中只有一条语句, 则可以声明为箭头函数
   */
  list.forEach((item) => print(item));

  var list02 = list.map((String item) => item.toUpperCase());
  assert(list02.toString() == '(A, B, C)');
}
