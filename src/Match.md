# Match

## Match 数据结构

成功的匹配会返回一个 `Match` 数据结构，保存在 `$/` 中，这个返回值可以在不同的上下文中返回不同的数据结构：

    my $bool-value  = $/.Bool;
    my $str-value   = $/.Str;
    my @array-value = $/.Array;
    my %hash-value  = $/.Hash;
    my $str-value   = +$/;

`Match` 对象通常是字符串成功匹配 `regex` 后的结果。其中保存了原始的字符串(`.orig`)，带有位置和命名规则的捕获字段。抽象语法树 `AST` 就是通过复杂的正则表达式和语法规则，在 `Match` 对象的内容中构建出来。

Match 对象也是由 Match 对象构成的，所以也可以把 `Match` 对象看成由 `Match` 对象构成的一棵树。

## 可调用的方法

### orig

返回匹配 regex 的原始字符串：

    > say ('string' ~~ / str /).orig
    string

### from

### to

### made

### ast

是方法 `made` 的别名函数

### Str

### caps

### chunks

### list

### hash

### prematch

### postmatch

### make

    method make(Match:D: Mu $ast)

设置 $ast 为 AST, 并返回它

