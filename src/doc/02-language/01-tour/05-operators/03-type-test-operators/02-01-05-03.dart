/*
 * https://dart.dev/guides/language/language-tour#type-test-operators
 */

void main() {
  fn01();
  fn02();
  fn03();
}

/// `is`
/// 用来判断某个对象是否属于某个类型
fn01() {
  assert(2 is int);
  assert('a' is String);
  assert(false is bool);
  assert(3.14 is double);
  assert([] is List);
  assert({} is Map);

  // ignore: unnecessary_type_check_true
  assert(null is Object);
}

/// `is!`
/// 用来判断某个对象是否不属于某个类型
void fn02() {
  assert(2 is! bool);
  assert(false is! List);
}

/// `as`
/// 用来转换类型
void fn03() {
  dynamic v01 = 'foo';
  assert((v01 as String).toUpperCase() == 'FOO');

  String v02 = v01 as String;
  assert(v02.toUpperCase() == 'FOO');
}
