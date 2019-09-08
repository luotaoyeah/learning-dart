/*
 * https://dart.dev/guides/language/language-tour#handling-futures
 */

void main() {
  fn02();
}

/*
 * `Future` 类似于 JS 中的 `Promise`
 */
Future<int> fn01() {
  return Future.delayed(Duration(seconds: 1), () => 9);
}

void fn02() async {
  var i = await fn01();
  assert(i == 9);
}
