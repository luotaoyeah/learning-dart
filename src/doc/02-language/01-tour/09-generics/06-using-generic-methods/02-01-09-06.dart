/*
 * https://dart.dev/guides/language/language-tour#using-generic-methods
 */

void main() {
  fn02();
}

/*
 * 泛型方法
 */

T fn01<T>(List<T> list) {
  T t = list[0];
  return t;
}

void fn02() {
  assert(fn01<int>([1, 2, 3]) == 1);
}
