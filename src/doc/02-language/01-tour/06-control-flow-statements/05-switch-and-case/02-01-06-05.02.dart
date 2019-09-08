/*
 * https://dart.dev/guides/language/language-tour#switch-and-case
 */

void main() {
  fn01();
}

void fn01() {
  String result = '';
  int condition = 1;

  /*
   * 可以给每个 case 加一个标签(label), 然后在其他的 case 中使用 `continue someLabel;` 语句跳转到指定的 case,
   * 表示该 case 执行完毕之后, 直接执行指定的 case, 不再进行条件匹配,
   * 使用 `continue` 跳转到的 case 可以在当前 case 的前面
   */
  switch (condition) {
    case 1:
      result += 'A';
      continue case03;

    case02:
    case 2:
      result += 'B';
      break;

    case03:
    case 3:
      result += 'C';
      continue case02;

    case 4:
      result += 'D';
      break;

    default:
      print('DEFAULT');
  }

  assert(result == 'ACB');
}
