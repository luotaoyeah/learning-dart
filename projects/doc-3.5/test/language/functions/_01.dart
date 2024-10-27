import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/functions#parameters
  test(
    '01',
    () {
      // 对于函数的参数, 主要关系四个方面:
      //     1. 是  named parameter, 还是 positional parameter,
      //     2. 是否必传, 否则可选,
      //     3. 是否可空,
      //     4. 是否有默认值,

      // named parameter:
      //     默认为可选的,
      //         如果无默认值, 则必须为可空的(nullable),
      //         如果有默认值, 则可以为可空的, 也可以为不可空的(non-nullable),
      //     类型前面加上 required 表示必传的,
      //         不能有默认值, 可以为可空的, 也可以为不可空的(non-nullable),
      void fn01({int? a, int b = 2, required int c, required int? d}) {}

      // positional parameter:
      //     默认为必传的,
      //         不能有默认值, 可以为可空的, 也可以为不可空的(non-nullable),
      //     用 [] 包裹的表示可选的,
      //         如果无默认值, 则必须为可空的(nullable),
      //         如果有默认值, 则可以为可空的, 也可以为不可空的(non-nullable),
      void fn02(int a, int? b, [int? c, int d = 4]) {}
      ;
    },
  );

  // https://dart.dev/language/functions#return-values
  test(
    '02',
    () {
      // 函数没有声明返回类型, 则默认返回 null,
      fn01() {}

      // 显式声明返回类型为 Null,
      Null fn02() {}

      expect(fn01(), null);
      expect(fn02(), null);

      expect(null is Null, true);
    },
  );

  // https://dart.dev/language/functions#generators
  test(
    '03',
    () {
      // 使用 sync* 标注的 generator 函数, 是一个 sync generator function, 返回类型为 Iterable<T>,
      Iterable<int> fn01() sync* {
        for (int i = 1; i <= 3; i++) {
          yield i;
        }
      }

      // 使用 async* 标注的 generator 函数, 是一个 async generator function, 返回类型为 Stream<T>,
      Stream<int> fn02() async* {
        for (int i = 1; i <= 3; i++) {
          yield i;
        }
      }

      for (var value in fn01()) {
        print(value);
      }

      fn02().forEach(
        (element) {
          print(element);
        },
      );
    },
  );
}
