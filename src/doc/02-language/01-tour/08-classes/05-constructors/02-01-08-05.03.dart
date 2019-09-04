/*
 * https://dart.dev/guides/language/language-tour#constructors
 */

void main() {
  fn01();
}

void fn01() {
  assert(C01.upper('Foo').x == 'FOO');
  assert(C01.lower('Foo').x == 'foo');
}

class C01 {
  String x;

  C01();

  /*
   * named constructor 可以声明多个
   */
  C01.upper(String x) {
    this.x = x.toUpperCase();
  }

  C01.lower(String x) {
    this.x = x.toLowerCase();
  }
}
