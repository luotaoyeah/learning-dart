/*
 * https://dart.dev/guides/language/language-tour#comments
 */

void main() {
  fn01();
}

/*
 * dart 支持三种注释:
 *   1. 单行注释
 *   2. 多行注释
 *   3. 文档注释
 */

/*
 * 文档注释有两种形式:
 *   1. /// comment
 *   2. /** comment */
 *
 * 文档注释中可以使用 [xxxx] 的形式引用某个对象,
 * 这样, 在使用文档工具生成 HTML 文档之后, 这些引用对象会变成超链接, 链接到对应的页面
 */

/// [name] is of type [String],
/// [age] is of type [int]
void fn01({String name, int age}) {}

/**
 * [fn02] has no arguments
 */
void fn02() {}
