/*
 * https://dart.dev/samples#control-flow-statements
 */

import 'dart:math';

void main() {
  var age = new Random().nextInt(100);

  /*
   * 支持 if/else if/else 条件语句
   */
  if (age < 18) {
    print("少年");
  } else if (age < 60) {
    print("壮年");
  } else {
    print("老年");
  }
}
