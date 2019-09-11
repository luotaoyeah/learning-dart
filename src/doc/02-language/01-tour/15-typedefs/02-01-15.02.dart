/*
 * https://dart.dev/guides/language/language-tour#typedefs
 */

void main() {
  fn01();
}

/*
 * 如下方式, 定义一个类型别名, 直接使用函数名称作为别名
 */
typedef bool SomeCallback(int x, int y);

void fn01() {
  SomeCallback callback = (int x, int y) {
    return false;
  };
}
