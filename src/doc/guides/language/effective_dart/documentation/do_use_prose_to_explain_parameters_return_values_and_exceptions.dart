/// https://dart.dev/guides/language/effective-dart/documentation#do-use-prose-to-explain-parameters-return-values-and-exceptions
void main() {
  assert(fn01(0, "0"));
}

/// 不需要对参数 [x], [y] 和返回类型单独进行注释,
/// 比如, 在 javascript 中是通过 @param 和 @return 来单独标识参数和返回类型,
/// 在 dart 中不需要这样, 而是通过统一的注释语句进行描述
bool fn01(int x, String y) {
  return (x + y.length) > 0;
}
