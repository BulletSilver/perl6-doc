## 字符串及相关函数

Perl6 是处理语言的语言，所以其最强大的功能都体现在处理字符串的能力上，这继承了
Perl5 的财富。

字符串有几种表示形式，单引号中除了反斜杠的需要转义外，其他都是本来的含义，
双引号中不但可以内插变量，还可以有许多特殊符号的表示，还有许多不经常用到的字符串形式：

  'string'
  "send me a $message"
  
字符串是不能修改的，除非用新的值替换它：

    > my $x = 'hello'
    hello
    > chop $x
    hell
    > say $x
    hello
    > $x = chop $x
    hell
    > say $x
    hell

所有的关于字符串的函数都有两(三)种表示方法：

    'string'.chop;
    chop 'string';
    chop('string');

# 函数 chomp

剔除字符串结尾的回车符, 在 Unix 和 Windows 系统中的回车符都可以一次性的剔除：

    > "str\n".chomp.perl
    "str"
    > "str\r".chomp.perl
    "str"
    > "str\r\n".chomp.perl
    "str"
    > "str\n\r".chomp.perl
    "str\n"

# 函数 chop

剔除结尾指定长度的字符，默认为 1 个, 小于 1 或大于字符串长度的截取都是无效的：

    > "string".chop
    strin
    > "string".chop(2)
    stri
    > "string".chop(0)
    string
    > "string".chop(6)
    
    > "string".chop(7)
    string
    > "string".chop(-1)
    string

# 函数 lc

将字符串中大写的部分转换成小写，Perl6 是一门大小写敏感的语言：

    > 'HELLO'.lc
    hello
    > 'hellO'.LC
    Method 'LC' not found for invocant of class 'Str'
    > 'hellO'.lc
    hello
    > '123'.lc
    123

# 函数 uc

将字符串中小写的部分转换成大写：
    
    > 'hello'.uc
    HELLO
    > 'HEllo'.uc
    HELLO

# 函数 tc

将首字符大写：

    > 'hello'.tc
    Hello
    > 'HELLO'.tc
    HELLO

# 函数 tclc

将首字母大写，其余的小写：

    > 'hello'.tclc
    Hello
    > 'HELLO'.tclc
    Hello

# 函数 wordcase

将每个单词都进行 tclc 的操作：

    > 'hello world'.wordcase
    Hello World

# 函数 chars

获取字符串的长度：

    > 'hello'.chars 
    5

# 函数 index

获取字符串指定位置和长度的子字符串：

    say index "Camelia is a ", "a";     # 1
    say index "Camelia is a ", "a", 2;  # 6
    say index "Camelia is a ", "er";    # 17
    say index "Camelia is a ", "Camel"; # 0
    say index "Camelia is a ", "Onion"; # Int()
    say index("Camelia is a ", "Onion").defined ?? 'OK' !! 'NOT'; # NOT

# 函数 rindex

从后往前获取指定子字符串在字符串中的位置：

    > 'hello'.rindex('l')
    3
    > 'hello'.rindex('h')
    0
    > 'hello'.rindex('o')
    4

# 函数 split

根据指定字符或匹配拆分字符串：

    > 'a;b;c'.split(';').perl
    ("a", "b", "c").list
    > 'a;b;c'.split(';',:all).perl
    (("a", ";"), ("b", ";"), "c").list
    > 'a;b;c'.split(';',2).perl
    ("a", "b;c").list
    > 'a;b;c'.split(';',2,:all).perl
    (("a", ";"), "b;c").list
    > 'a,b;c'.split(/<[;,]>/).perl
    ("a", "b", "c").list

# 函数 comb

获取字符串中匹配指定模式的子字符串列表（注:列表只有一个元素时，会多一个逗号）：

    > 'a;b;c'.comb(/\w/).perl
    ("a", "b", "c").list
    > 'a;b;c'.comb(/\N/).perl
    ("a", ";", "b", ";", "c").list
    > 'ad;bd;cd'.comb(/\w+/).perl
    ("ad", "bd", "cd").list
    > 'ad;bd;cd'.comb(/\w+/,2).perl
    ("ad", "bd").list
    > 'ad;bd;cd'.comb(/\w+\;\w+/).perl
    ("ad;bd",).list

# 函数 lines

按照回车拆分字符串，也就是按照行来分解字符串：

    > "a\nb".lines.perl
    ("a", "b").list
    > "a\n".lines.perl
    ("a",).list
    > "a\n\n".lines.perl
    ("a", "").list
    > "a\n\n\n".lines.perl
    ("a", "", "").list

# 函数 words

将字符串拆分成单词

    > "a\nb\n".words.perl
    ("a", "b").list
    > "hello world".words.perl
    ("hello", "world").list
    > "foo:bar".words.perl
    ("foo:bar",).list
    > "foo:bar\tbaz".words.perl
    ("foo:bar", "baz").list

# 函数 flip

反转字符串

    > 'hello'.flip
    olleh
    > 'abba'.flip
    abba

# 函数 subst

使用一个匹配或字符串替换字符串：

    > 'some foo'.subst(/foo/, 'string')
    some string
    > 'the answer is secret'.subst(/secret/, {++$i})
    the answer is 1
    > "Hey foo foo foo".subst(/foo/, 'bar', :g)
    Hey bar bar bar
    > "Hey foo foo foo".subst(/foo/, 'bar', :x(0))
    Hey foo foo foo
    > "Hey foo foo foo".subst(/foo/, 'bar', :x(1))
    Hey bar foo foo
    > "Hey foo foo foo".subst(/foo/, 'bar', :nth(3))
    Hey foo foo bar

# 函数 substr

返回字符串指定位置指定长度的子字符串：

    substr("Long string", 6, 3);     # tri
    substr("Long string", 6);        # tring
    substr("Long string", 6, *-1);   # trin
    substr("Long string", *-3, *-1); # in

# 函数 succ

返回字符串代表的数字加1：

    '12.34'.succ      # 13.34
    'img001.png'.succ # img002.png
    'aa'.succ   # ab
    'az'.succ   # ba
    '109'.succ  # 110
    'α'.succ    # β
    'a9'.succ   # b0

# 函数 pred

将字符串中的数字递减（尤其用在文件名的生成上）：

    'b0'.pred           # a9
    'a0'.pred           # Failure
    'img002.png'.pred   # img001.png

# 函数 ord

返回字符串第一个字符的 codepoints (ASC 值）：

    > 'str'.ord
    115
    > 'string'.ord
    115
    > 'string'.ord(2)
    Too many positionals passed; expected 1 argument but got 2
    > 's'.ord
    115

# 函数 ords

返回字符串每个字符的 codepoints(ASC 值）：

    > 'str'.ords
    115 116 114
    > 'str'.ords.perl
    (115, 116, 114).list

# 函数 indent

将字符串每行缩进指定的字符：

    > "hello world".indent
    Too few positionals passed; expected 2 arguments but got 1
    （应当设置默认的缩进为0）
    > "hello world".indent(2).perl
    "  hello world"
    > "  hello world".indent(2).perl
    "    hello world"
    > "  hello world\nthanks".indent(2).perl
    "    hello world\n  thanks"

# 函数 trim

剔除字符串首尾的空格：

    > ' hello world '.trim.perl
    "hello world"
    > (trim ' hello world ').perl
    "hello world"

# 函数 trim-trailing

剔除字符串后后面的空格：

    > 'tanks  '.trim-trailing
    tanks

# 函数 trim-leading

剔除字符串开始的空格：

    > ' tanks'.trim-leading
    tanks

（未完待续）
