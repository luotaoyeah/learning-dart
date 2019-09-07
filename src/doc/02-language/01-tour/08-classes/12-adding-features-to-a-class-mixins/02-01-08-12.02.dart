/*
 * https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins
 */

void main() {
  fn01();
}

class C01 {}

mixin Mixin01 {
  int x = 9;
}

/*
 * 使用 `on SomeClass` 表示只有 `SomeClass` 及其子类才可以使用这个 mixin
 */
mixin Mixin02 on C01 {
  int y = 9;
}

class C02 with Mixin01 {}

/*
 * `C03` 必须继承 `C01`, 否则无法使用 `Mixin02`
 */
class C03 extends C01 with Mixin02 {}

void fn01() {}
