/*
 * https://dart.dev/guides/language/language-tour#optional-parameters
 */

void main() {
  assert(fn01(9, 9) == 18);

  assert(fn02(9, 9) == 18);
  assert(fn02(9) == 9);
}

/*
 * positional parameters
 * 指的是在定义函数参数的时候, 参数的顺序是很重要的,
 * 在调用函数的时候, 必须按照参数定义的属性来传递参数,
 */

int fn01(int x, int y) {
  return x + y;
}

/*
 * positional parameters 默认都是必传的,
 * 使用 [] 将一个参数包裹起来, 表示该参数是一个可选的参数,
 * 可选参数必须位于所有的必选参数后面
 */
int fn02(int x, [int y]) {
  return x + (y == null ? 0 : y);
}
