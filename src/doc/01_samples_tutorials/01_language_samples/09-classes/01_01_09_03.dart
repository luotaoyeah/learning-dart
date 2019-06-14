/*
 * https://dart.dev/samples#classes
 */

void main() {
  var c = new C.name('FOO');
  assert(c.toString() == "(FOO,9)");
}

class C {
  String name;
  int age;

  C(this.name, this.age);

  /// declare a named constructor that forward to the default constructor
  C.name(String name) : this(name, 9);

  @override
  String toString() {
    return '(' + this.name + ',' + this.age.toString() + ')';
  }
}
