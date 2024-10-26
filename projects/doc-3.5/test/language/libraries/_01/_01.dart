// 通过 as 给引入的 library 取一个别名,

// 默认会引入所有数据,
// 如果使用了 show, 则只有 show 后面的才会引入,
// 如果使用了 hide, 则除了 hide 后面的都会引入,
import 'package:test/test.dart';

import '_01.01.dart' as lib01 show C01, C02 hide C03;
import '_01.01.dart' as lib02 hide C03, C04;

// https://dart.dev/language/libraries
void main() {
  test('01', () {
    var c01 = lib01.C01();
    var c02 = lib01.C02();
    var c05 = lib02.C05();
  });
}
