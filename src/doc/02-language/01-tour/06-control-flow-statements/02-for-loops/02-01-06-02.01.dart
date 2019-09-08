/*
 * https://dart.dev/guides/language/language-tour#for-loops
 */

void main() {
  fn01();
}

/*
 * dart 中的 for 循环跟 js 中的 for 循环有一个区别:
 *   每次循环都是一个 closure, 可以捕获本次循环变量的值
 *
 * 原因在于, 在 js 中如果使用 var 声明一个变量, 则该变量的作用域属于当前 function,
 * 使用 let 声明循环变量则不会有这个问题
 */
void fn01() {
  var callbacks = [];

  for (var i = 0; i < 3; i++) {
    callbacks.add(() => i);
  }

  assert(callbacks.map((f) => f()).toList().toString() == '[0, 1, 2]');
}
