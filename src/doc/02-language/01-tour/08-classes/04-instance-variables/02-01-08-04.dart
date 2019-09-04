/*
 * https://dart.dev/guides/language/language-tour#instance-variables
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C01(0);

  assert(c01.x == 0);
  assert(c01.y == null);
  assert(c01.z == 0);
}

class C01 {
  /*
   * 当声明一个属性时, 实际上会隐式地创建一个 getter/setter,
   * 如果属性声明为 final, 则只会隐式地创建一个 getter
   */
  num x = 0;

  /*
   * 属性如果没有初始化, 则默认值为 null
   */
  num y;

  num z;

  /*
   * 可以在声明属性的时候进行初始化,
   * 也可以在 constructor 中进行初始化
   */
  C01(this.z);
}
