/*
 * https://dart.dev/guides/language/language-tour#maps
 */

void main() {
  fn01();
  fn02();
  fn03();
}

/*
 * map 中存储的是键值对, key 和 value 可以是任意类型
 */
void fn01() {
  var map01 = {};
  var map02 = {"x": 1, ...?map01};

  var map03 = Map();
  map03['x'] = map02['x'];
  map03['y'] = 2;

  assert(map03 is Map<dynamic, dynamic>);
  assert(map03.toString() == '{x: 1, y: 2}');
}

/*
 * 使用 `length` 属性获取键值对的数量
 */
void fn02() {
  var map01 = {'x': 1, 'y': 2, 'z': 3};
  assert(map01.length == 3);
}

void fn03() {
  /*
   * 如果访问的 key 不存在, 则返回的值为 `null`
   */

  assert({'x': 1}['y'] == null);
}
