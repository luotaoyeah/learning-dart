/*
 * https://dart.dev/guides/language/language-tour#metadata
 */

void main() {
  fn01();
}

/// dart 中默认可以使用两个注解: [override] 和 [deprecated]
class C01 {
  fn01() {}
}

class C02 extends C01 {
  @override
  fn01() {
    return super.fn01();
  }
}

/// this function is deprecated
@deprecated
void fn01() {}
