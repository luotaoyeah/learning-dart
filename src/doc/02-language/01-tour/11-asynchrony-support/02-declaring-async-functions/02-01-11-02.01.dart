/*
 * https://dart.dev/guides/language/language-tour#declaring-async-functions
 */

void main() {
  fn03().then((value) {
    assert(value == 9);
  });
}

/*
 * async function 的返回结果是一个 `Future` 对象,
 * 如果返回的值不是一个 `Future` 对象, dart 会自动将它包装成 `Future` 对象 
 */

Future<int> fn01() async {
  return 9;
}

Future<int> fn02() async {
  var future01 = fn01();
  assert(future01 is Future<int>);
  return future01;
}

Future<int> fn03() async => await fn02();
