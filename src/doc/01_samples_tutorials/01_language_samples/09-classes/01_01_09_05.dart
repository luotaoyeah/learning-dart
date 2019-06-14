/*
 * https://dart.dev/samples#classes
 */

void main() {
  C c = new C();
  assert(c.fn01() == 9);
}

class C {
  /// declare a method
  int fn01() {
    return 9;
  }
}
