import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/metadata
  test('01', () {
    @C01('HELLO')
    String s01;

    @c01
    String s02;
  });
}

class C01 {
  final String? message;

  // const constructor 可以作为 annotation 使用,
  const C01(this.message);
}

// compile-time const 可以作为 annotation 使用,
const c01 = C01('DEFAULT');
