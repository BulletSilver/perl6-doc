## Perl 6 不好的特性

1. 用 @ 来命名数组，但数组的引用却不能用 @ 来命名。明显有数组和数组的引用
两种类型，也就是说，List 和 Array.

但是 List 不能遍历，这让这种类型基本没有什么用处，只能用代码表示，而不是
生成。

2. 用这么多的配对分界符来定义语言，也就是可以定义任何语言的语言。
这个没有必要，只在需要的时候添加，只要支持 Unicode 就足够了。

需要缩减为 () [] {} <> '' "" // << >> ``

3. 用最长匹配原则，这样就能省略很多的括号，这让匹配变得效率越来越慢。
增加必要的括号和空格，来分割表达式，让 LTM 功能彻底消失。
既然这样，Perl 6 的未来将不被看好。适合做一些分散的局部的工作。
正适合文本转换。

架构中有些变量只能从内部修改，也就是只读变量。$_FILE $!ERROR 

    $ 这个命名空间除了下划线开始的变量外，都是对用户开放的。

只定义有限个全局函数，能够用户设计的函数库都使用第三方库。

低级语言，中级语言，高级语言之间是词法封闭的。

低级语言直接对话 CPU 内存
中级语言分离出符号表，类型，变量，函数，容器等基本语言类型
高级语言进化最快。

每个层级的算法都有效率测试机制，总是让更快效率的算法占据核心代码。

注释使用这么多的形式太让人恶心了，但结构化的注释是可取的。
这让文档成为可测试的数据结构。


长字符串的定义太让人恶心了。

""
""
''
''
