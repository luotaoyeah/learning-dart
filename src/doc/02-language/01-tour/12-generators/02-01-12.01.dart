/*
 * https://dart.dev/guides/language/language-tour#generators
 */

void main() {
  fn01();
  fn02();
}

/*
 * dart 内置支持两种 generator function:
 *   1. sync generator function, 返回一个 Iterable 对象
 *   2. async generator function, 返回一个 Stream 对象
 */

/*
 * 使用 `sync*` 声明一个 sync generator
 */
Iterable<int> gen01() sync* {
  int i = 0;
  while (i < 3) {
    yield ++i;
  }
}

void fn01() {
  List<int> result = [];

  for (var value in gen01()) {
    result.add(value);
  }

  assert(result.toString() == '[1, 2, 3]');
}

/*
 * 使用 `async*` 声明一个 async generator
 */
Stream<int> gen02() async* {
  int i = 0;
  while (i < 3) {
    yield ++i;
  }
}

void fn02() async {
  List<int> result = [];

  await for (var value in gen02()) {
    result.add(value);
  }

  assert(result.toString() == '[1, 2, 3]');
}
