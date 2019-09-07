/*
 * https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins
 */

void main() {
  fn01();
}

/*
 * mixin 是一类特殊的 class, 具有以下特点:
 *   1. 父类必须是 `Object`
 *   2. 不能声明 constructor
 *   3. `class` 关键字可以替换为 `mixin` 关键字
 */

class Mixin01 {
  int x = 9;
}

mixin Mixin02 {
  int y = 9;
}

/*
 * 如何使用一个 mixin ? 使用 `with` 关键字,
 * 可以同时使用多个 mixin, 使用逗号分隔
 */
class C01 with Mixin01, Mixin02 {
  int fn01() {
    return this.x + this.y;
  }
}

void fn01() {
  var c01 = C01();
  assert(c01.fn01() == 18);
}
