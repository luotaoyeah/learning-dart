/*
 * https://dart.dev/samples#classes
 */

void main() {
  C01 c01 = new C01.name01('FOO');
  assert(c01.toString() == "(FOO,9)");

  C01 c02 = new C01.name02(99);
  assert(c02.toString() == '(BAR,99)');
}

class C01 {
  String name;
  int age;

  C01(this.name, this.age);

  /*
   * named constructor 可以引用 default constructor
   */
  C01.name01(String name) : this(name, 9);

  C01.name02(int age) : this("BAR", age);

  @override
  String toString() {
    return '(' + this.name + ',' + this.age.toString() + ')';
  }
}
