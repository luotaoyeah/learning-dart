/*
 * https://dart.dev/guides/language/language-tour#nosuchmethod
 */

void main() {
  fn01();
}

void fn01() {
  dynamic c01 = C01();
  /*
   * 当对象是 `dynamic` 类型时, 可以访问它的任意属性, 即使这个属性不存在, 也不会编译报错(类似于 TS 中的 any 类型),
   * 但是运行时会报错, 报的错为 `NoSuchMethodError`,
   * 如果我们重写了 `noSuchMethod` 方法, 则不会报 `NoSuchMethodError` 错, 而是会调用该方法
   */
  c01.x();
}

class C01 {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print('NO SUCH METHOD: ${invocation.memberName}');
  }
}
