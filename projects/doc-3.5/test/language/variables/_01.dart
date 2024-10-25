import 'package:test/test.dart';

void main() {
  // https://dart.dev/language/variables
  test("01", () {
    var v01 = 'A';
    String v02 = 'A';
    Object v03 = 'A';

    expect(v02 == v01, true);
    expect(v02 == v03, true);
  });
}
