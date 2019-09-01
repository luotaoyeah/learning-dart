/*
 * https://dart.dev/guides/language/language-tour#optional-parameters
 */

void main() {
  assert(fn01(y: 9) == 9);
  assert(fn02(9) == 9);
}

/*
 * named parameters 和 positional parameters 都可以设置可选参数的默认值,
 * 如果一个 named parameter 设置了默认值, 那它就不能再被标记为 @required 了
 */

int fn01({int x = 0, int y}) {
  return x + (y == null ? 0 : 9);
}

int fn02(int x, [int y = 0, int z]) {
  return x + y;
}
