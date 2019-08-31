/*
 * https://dart.dev/samples#control-flow-statements
 */

void main() {
  var arr01 = [1, 2, 3];

  /*
   * 支持两种形式的 for 循环
   */

  for (var i in arr01) {
    print(i);
  }

  for (int i = 0; i < arr01.length; i++) {
    print(arr01[i]);
  }
}
