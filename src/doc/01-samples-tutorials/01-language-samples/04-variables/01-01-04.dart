/*
 * https://dart.dev/samples#variables
 */

void main() {
  /*
   * 使用关键字 var 来声明一个变量,
   * 因为有 type inference, 可以不用显式地声明变量类型
   */

  var str01 = "FOO";
  var num01 = 99;
  var arr01 = ["A", "B", "C"];
  var obj01 = {"x": 'X', "y": 'Y'};

  print(str01);
  print(num01);
  print(arr01);
  print(obj01);
}
