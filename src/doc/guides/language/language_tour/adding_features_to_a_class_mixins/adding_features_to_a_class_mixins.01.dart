/*
 * https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins
 */

void main() {
  fn01();
}

/*
 * mixin 是一种特殊的 class, 具有以下特点:
 *   1. 必须是 `Object` 的直接子类 / 不能继承自其它类 / 父类必须是 `Object`
 *   2. 不能声明构造函数
 *   3. 可以使用 `mixin` 替换 `class` 关键字
 */

class Mixin01 {
  int x = 9;
}

mixin Mixin02 {
  int y = 9;
}

/*
 * 如何使用 mixin ? 使用 `with` 关键字,
 * 可以同时使用多个 mixin, 使用逗号分隔
 */
class C01 with Mixin01, Mixin02 {
  int fn01() {
    return this.x + this.y;
  }
}

void fn01() {
  assert(C01().fn01() == 18);
}
