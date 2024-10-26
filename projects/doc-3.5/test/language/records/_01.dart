import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/records#record-syntax
  test("01", () {
    // record 类型就类似于函数的参数列表, 用圆括号包裹多个数据, 组成一个整体, 其中有 positional 的, 也有 named 的,

    // 在声明 record 类型时, 一些规则:
    //     named 字段必须指定名称(比如下面的 c, d), positional 字段可以指定名称(比如下面的 a), 也可以不指定名称(比如下面的第二个字段),
    //     named 字段需要放到花括号中,
    //     所有的 named 字段必须放到所有的 positional 字段后面,
    (String a, String, {int c, bool d}) record = ('A', c: 1, d: true, 'B');

    // 在 record 表达式中, named 字段需要通过 name: value 的形式来指定它的值, 并且 named 字段的位置可以任意,
  });
}
