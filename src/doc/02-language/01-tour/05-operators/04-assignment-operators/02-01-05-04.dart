/*
 * https://dart.dev/guides/language/language-tour#assignment-operators
 */

void main() {
  fn01();
}

fn01() {
  var i01 = 9;
  i01 ~/= 2;
  assert(i01 == 4);

  var i02 = 9;
  i02 = i02 ~/ 2;
  assert(i02 == 4);
}
