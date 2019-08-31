/*
 * https://dart.dev/samples#classes
 */

void main() {
  C01 c01 = new C01(9);

  assert(c01.age == 9);
  assert(c01.age02 == 18);
  assert(c01.ageStr == '9');
}

class C01 {
  int age;

  C01(this.age);

  /*
   * 可以使用类似 arrow function 的形式定义一个 getter
   */
  String get ageStr => this.age.toString();

  /*
   * 也可以使用传统的方式定义一个 getter
   */
  int get age02 {
    return this.age * 2;
  }
}
