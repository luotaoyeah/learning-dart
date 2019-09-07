/*
 * https://dart.dev/guides/language/language-tour#handling-streams
 */

void main() {
  fn01();
}

Stream<String> generateStream() async* {
  int i = 0;
  List<String> list01 = ['A', 'B', 'C'];

  while (i < list01.length) {
    yield list01[i++];
  }
}

/*
 * 可以使用 await for 循环, 来读取 stream 中的数据, 直到 stream 关闭
 */
void fn01() async {
  String result = '';

  await for (var value in generateStream()) {
    result += value;
  }

  assert(result == 'ABC');
}
