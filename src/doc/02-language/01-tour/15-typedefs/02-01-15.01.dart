/*
 * https://dart.dev/guides/language/language-tour#typedefs
 */

void main() {
  fn01();
  fn02();
}

/*
 * 可以给一个函数类型定义一个别名, 在其他地方就可以使用这个函数类型,
 * 注意, 当前只支持给函数类型定义类型别名, 不支持给它其他类型定义别名
 */

typedef Function01 = int Function(String x, int y);

void fn01() {
  Function01 fn01 = (String x, int y) => x.length + y;
  assert(fn01 is Function01);
  assert(fn01 is Function);
}

/*
 * 函数类型别名还支持泛型参数
 */
typedef Function02<T extends num> = T Function(T t01, T t02);

void fn02() {
  Function02<int> fn02 = (int x, int y) => x + y;
  assert(fn02 is Function02<int>);
}
