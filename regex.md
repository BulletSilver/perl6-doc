Regex 代替了 Perl5 的 Regexp，保留了一些规则，变更了一些规则，增加了新的规则.

Perl6 使用 `~~` 代替了 Perl5 的 `=~`.

保留不变的有：

    'a' or'ab' or 'abb' ~~ /ab*/;
    'ab' ~~ /ab+/;
    'ab' ~~ /ab?/;
    'abc' ~~ /a.c/;
    'abc' ~~ /abc/;

变更的规则：

    'abbb' ~~ /ab**3/;
    'abbb' ~~ /ab**1..3/;

字符类使用 `<[...]>`:

    / oo <[dlt]> / # 匹配 ood, ool, oot
    / <[a..d]> / # matches a,b,c,d

向前看：

    / foo <before \d+> / # match "foo" follow some digit
    / <after \d+> foo / # match some digit follow "foo"

内置了一些字符集：

    <ident> # 匹配 <[a..zA..Z_]><[a-zA..Z0..9_]>*
    <dot>   # 匹配点 .
    <alpha> # 匹配一个字符
    <digit> # 匹配一个数字
    <sp>    # 匹配一个单个的空格
    <ws>    # 匹配任意空格
    <lt>    # 小于号
    <gt>    # 大于号
    <null>  # 什么也不匹配（经常用于可有可无的分支）

反斜杠转义的字符表：

    \w  word characters (alphabetics, numerics, and underscore)
    \d  digits
    \s  whitespace characters
    \t  tab character
    \n  newline sequence
    \r  carriage return character
    \f  form feed character
    \h  horizontal whitespace
    \v  vertical whitespace

分组 Group：

有三种分组

    /'literal'/ # 单引号
    /"literal"/ # 双引号
    /(literal)/ # 括号
    /[literal]/ # 方括号

分支 `|` 和`||`:

第二种分支 `||` 和 Perl 5 的 `|` 相同，符合条件的第一个分支将被采纳。

同时匹配两个条件：
 
        A &  B    # 同时匹配A 和 B, 而且匹配的字符长度相同
        A && B   # 同时匹配 A 和 B, 而且保证顺序 

而第一种分支是 Perl 6 独有的，将会对分支中所有的条件进行测试，所有符合条件的分支，匹配字符最多的那个就是最后被采纳的分支。

## 零宽匹配符

    ^    匹配字符串开始的位置
    $    匹配字符串结束的位置
    ^^  匹配行首
    $$   匹配行尾
    <<  左字符边界
    >>  右字符边界

## 变量内插

字符串变量内插通常会将字符串的字面量插入到正则表达式中：

    my $foo = "ab*c";
    my @bar = < one two three >;
    / $foo @bar / ==  / 'ab*c' [ one | two | three ] /

如果想插入正则表达式本身：

    my $foo = /ab*c/;
    'abbc' ~~ / $foo /;

正则表达式是一种匹配规则，是函数的一种：

    my $rule = /hello/;
    my $rule = rx{hello};
    my $rule = m{hello};

    say 'match' if 'hello' ~~ $rule;

如果想重用 regex, 就需要用：

    regex number { \d+[ <dot> \d+]? }
    32.51 ~~ &number;
    '15 + 4.5' ~~ s:/<number> '+' <number/;

## 捕获值

正则表达式匹配后，通常会捕获一个数据结构，如果是一个数组，通常是从 `$0` 开始：

    / (\d**1..3) <?{ $0 < 256 }> /

如果匹配成功，会返回一个 `Match` 对象，保存在动态局部变量 `$/` 中，如果匹配失败，则返回 `Nil`, `$/` 也将等于 `Nil`.
