/*
 * https://dart.dev/samples#functions
 */

void main() {
  /*
   * function 可以定义成 arrow function
   */

  // 可以将一个 arrow function 赋值给一个 variable
  int Function(int) double = (int i) => i * 2;

  // 可以将 arrow function 作为参数传递
  fn01(double);
  fn01((i) => i * i);
}

void fn01(int Function(int i) cb) {
  print([1, 2, 3].map(cb));
}
