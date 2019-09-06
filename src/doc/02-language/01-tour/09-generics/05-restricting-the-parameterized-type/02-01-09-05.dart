/*
 * https://dart.dev/guides/language/language-tour#restricting-the-parameterized-type
 */

void main() {
  fn01();
}

/*
 * 泛型约束
 */

class C01 {}

class C02 extends C01 {}

class C03 {}

class C04<T extends C01> {
  String fn01() {
    return '${T}';
  }
}

void fn01() {
  /*
   * 有了泛型约束, 泛型参数可以省略, 此时泛型参数默认为 `C01`
   */
  assert(C04().fn01() == 'C01');

  /*
   * 只有 `C01` 及其子类可以作为泛型参数的值
   */
  assert(C04<C02>().fn01() == 'C02');
}
