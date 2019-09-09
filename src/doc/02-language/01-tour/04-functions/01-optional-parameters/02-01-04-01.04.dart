/*
 * https://dart.dev/guides/language/language-tour#optional-parameters
 */

void main() {
  assert(fn01(1, y: 2, z: 3) == 6);

  C01 c01 = C01(1, y: 2, z: 3);
  assert((c01.x + c01.y + c01.z) == 6);
}

/*
 * positional parameter 和 named parameter 可以一起使用,
 * 由于 named parameter 默认是可选的, 因此它必须放在所有 named parameter 的后面
 */
int fn01(int x, {int y, int z = 0}) {
  return (x ?? 0) + (y ?? 0) + z;
}

class C01 {
  int x;
  int y;
  int z;

  /*
   * 构造函数的参数, 也可以同时使用 named parameter 和 positional parameter
   */
  C01(int x, {int y, this.z}) {
    this.x = x;
    this.y = y;
  }
}
