/*
 * https://dart.dev/guides/language/language-tour#enumerated-types
 */

void main() {
  fn01();
  fn02();
}

enum COLOR { RED, BLUE, GREEN }

/*
 * 使用 `index` 属性, 获取枚举值的索引
 */
void fn01() {
  assert(COLOR.RED.index == 0);
  assert(COLOR.BLUE.index == 1);
}

/*
 * 使用 `values` 属性, 获取枚举值的列表
 */
void fn02() {
  List<COLOR> values = COLOR.values;
  assert(values[1] == COLOR.BLUE);
}
