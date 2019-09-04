/*
 * https://dart.dev/guides/language/language-tour#redirecting-constructors
 */

void main() {
  fn01();
}

void fn01() {
  var c01 = C01.fn02('FOO');
  assert(c01.x == 'FOO');
  assert(c01.y == 'foo');
  assert(c01.z == 'FOO');
}

class C01 {
  String x;
  String y;
  String z;

  C01(this.x);

  C01.fn01(String x, String y, this.z)
      : this.x = x.toUpperCase(),
        this.y = y.toLowerCase() {}

  /*
   * constructor 可以重定向到其他的 constructor, 此时这个 constructor 称之为 redirecting constructor,
   * redirecting constructor 不能使用 initializer list, 不能调用 super constructor, 而且 body 必须为空
   */
  C01.fn02(String z) : this.fn01('Foo', 'Foo', z);
}
