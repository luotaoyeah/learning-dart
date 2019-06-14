/*
 * https://dart.dev/samples#functions
 */

void main() {
  /*
   * dart 支持箭头函数(arrow function),
   * 并且支持将 arrow function 作为参数传递
   */

  // 可以将一个 arrow function 赋值为一个 variable
  void Function(int i) cb = (int i) => {print((i * i).toString())};
  fn01(cb);

  fn02();
}

/**
 *
 */
void fn01(void Function(int i) cb) {
  cb(9);
}

/**
 *
 */
void fn02() {
  List<int> arr01 = [1, 2, 3];

  print(arr01.map((int i) => i * i));
}
