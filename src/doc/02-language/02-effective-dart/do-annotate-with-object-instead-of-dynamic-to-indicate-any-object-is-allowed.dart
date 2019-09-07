/*
 * https://dart.dev/guides/language/effective-dart/design#do-annotate-with-object-instead-of-dynamic-to-indicate-any-object-is-allowed
 */

void main() {
  assert(toBool(true) == true);
  assert(toBool(false) == false);
  assert(toBool('true') == true);
  assert(toBool('') == false);
}

/*
 * 因为 `Object` 是所有类型的父类, 因此 `Object` 可以表示任意类型,
 * 而 `dynamic` 的区别在于, `dynamic` 类似于 TS 中的 `any` 类型, 表示无法确定类型,
 * 在大多数情况下, 我们应该使用 `Object` 来表示任意类型
 */
bool toBool(dynamic obj) {
  if (obj is bool) {
    return obj;
  }

  if (obj is String) {
    return obj == 'true';
  }

  throw ArgumentError('CANNOT CONVERT $obj TO A BOOL');
}
