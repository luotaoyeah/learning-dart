/*
 * https://dart.dev/guides/language/language-tour#maps
 */

void main() {
  fn01();
  fn02();
  fn03();
}

void fn01() {
  /*
   * map 中存储的是键值对(key-value pair), key 和 value 可以是任意类型
   */

  var map01 = {};
  var map02 = {"x": 1, ...?map01};
  var map03 = Map();
  map03['x'] = map02['x'];
  map03['y'] = 2;

  assert(map03.toString() == '{x: 1, y: 2}');
}

void fn02() {
  /*
   * 使用 length 属性获取键值对的数量
   */

  var map01 = {'x': 1, 'y': 2, 'z': 3};
  assert(map01.length == 3);
}

void fn03() {
  /*
   * 如果访问一个不存在的 key, 则返回的值为 null
   */

  var map01 = {'x': 1};
  assert(map01['y'] == null);
}
