/*
 * https://dart.dev/guides/language/language-tour#functions-as-first-class-objects
 */

void main() {
  fn01();
  fn02();
}

/*
 * function 是一等公民(first-class),
 * function 可以被赋值给一个变量
 */
void fn01() {
  int fn01(int i) {
    return i * i;
  }

  var fn02 = fn01;
  assert(fn02(2) == 4);

  var fn03 = (int i) => i * i;
  assert(fn03(2) == 4);
}

/*
 * function 可以作为其他 function 的参数传递
 */
void fn02() {
  int fn01(int i) {
    return i * i;
  }

  int fn02(int Function(int) cb) {
    return cb(2);
  }

  assert(fn02(fn01) == 4);

  int fn03(int cb(int i)) {
    return cb(2);
  }

  assert(fn03(fn01) == 4);
}
