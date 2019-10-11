/*
 * https://dart.dev/guides/language/language-tour#enumerated-types
 */

void main() {
  fn01();
  fn02();
}

/*
 * enum 是一种特殊的 class
 */
enum Color { Red, Blue, Green }

/*
 * 使用 `index` 属性, 获取枚举值的索引,
 * 索引从 0 开始依次递增
 */
void fn01() {
  assert(Color.Red.index == 0);
  assert(Color.Blue.index == 1);
  assert(Color.Green.index is int);
}

/*
 * 使用 `values` 属性, 获取枚举值列表
 */
void fn02() {
  List<Color> colors = Color.values;
  assert(colors[0] == Color.Red);
  assert(colors[1] is Color);
}
