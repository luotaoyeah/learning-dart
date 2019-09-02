/*
 * https://dart.dev/guides/language/language-tour#lexical-scope
 */

void main() {
  fn01();
}

/*
 * 变量的作用域属于词法作用域(lexical scope)
 */
void fn01() {
  var i01 = 0;

  {
    var i01 = 1;
    var i02 = 1;
  }

  assert(i01 == 0);
}
