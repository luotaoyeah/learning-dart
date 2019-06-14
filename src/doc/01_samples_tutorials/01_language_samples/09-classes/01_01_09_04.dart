/*
 * https://dart.dev/samples#classes
 */

void main() {
  C c = new C(9);
  assert(c.age == 9);
  assert(c.ageStr == '9');
}

class C {
  int age;

  C(this.age);

  /// declare a getter
  String get ageStr => this.age.toString();
}
