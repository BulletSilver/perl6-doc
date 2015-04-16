学习任何一门新的语言，都要付出不菲的代价。Perl 6 是一门值得花费时间学习的优秀的计算机语言。

Perl6 最擅长进行语言的解析和文本的处理。

Perl6 是第一个解析语言的语言，内置了许多数据类型来做语言的解析。
也是一门用自身的语法来扩展语言本身的语言。

Perl 6 的开发首先从一个虚拟机开始，其完成自省的关键是设计了解析正则表达式
的算法，也就是一个有限自动机。这个算法生成了一个类似语法树的数据结构。而
这个数据结构正好是虚拟机的输入。这个有限自动机不但首先解析了定义语言的
正则表达式，而且解析了语言其他的代码。

这个虚拟机是独立开发的，几乎拥有现代语言的所有特征，局部作用域，面向对象的
架构，变量定义，列表，散列也有相对完整的库，而且支持并发。

从 Perl 6 的核心可以衍生出大部分拥有现有计算机语言语法的语言分支，
而且衍生出的这些语言可以在一个进程内按照一个约定的协议分享变量和过程。

这就意味着，你可以在 Perl 6 的语言环境中使用你所熟悉的计算机语言书写代码，
而不同的人用不同的语言书写的代码，竟然可以无缝的在一起工作。

在理论上，Perl 6 的虚拟机的优化，将让所有根植在其上的每种语言受益。这和在
JVM 之上开发多个语言的解释环境不同，在 JVM 中，不同语言之间只有独立编译的
库文件之间的函数，常量接口是共享的。而 Perl 6 中可以共享是语句。

## 1. Perl6 表达力精简

Perl6 的表达力甚至超过了 Ruby。

Ruby 代码：

     4.times{|t| puts t }

Perl6 代码：

     4 times -> t { say t }

## 2. Perl6 支持所有高级语言的特性

除了闭包，循环跳转，甚至还支持宏，也就是 Lisp 语系独有的宏。

## 3. Perl6 能自我进化

几乎所有语言的语法在设计之初就基本定型，但 Perl6 的语法是语言本身定义的。
这决定了 Perl6 的发展将超脱于固定的语法模式，成为未来的语言。

## 4. Perl6 支持 JIT 即时编译

传统的动态语言在效率和速度上总是比编译语言要慢，但 Perl6 在设计框架上，让
语言的速度无限接近编译语言。现在支持 JIT 的语言主要是 Lua。

## 5. Perl6 社区完善

从开源社区，到模块发布平台，都有一个成熟语言应有的特征。   
* 本章将介绍 Perl 6 的注释和特有的文档规则 介绍字符串的用法 介绍数组的主要用法 ## 3. Perl6 的数据类型

在 Perl6 中，每个值都属于一种数据类型。基本的数据类型有，Str（字符串），Int（整数）等。
对象也定义了一种数据类型。

Perl6 首创了 Junction 的数据类型，这种数据类型好像变幻的光球一般，时刻都会变成
某种基本的数据类型。另外还有枚举(Enum), 列表(List), 散列(Hash), 等数据类型。

默认情况下，变量所在的容器内可以放置任何数据类型：

    > my $x = 3
    3
    > $x.WHAT
    > say $x.WHAT
    (Int)
    > $x = 'x'
    x
    > say $x.WHAT
    (Str)

如果在定义变量时，指定了变量的类型，那么这个变量就不能再变更数据类型：

    > my Int $y = 4
    4
    > $y = 'y'
    Type check failed in assignment to '$y'; expected 'Int' but got 'Str'
    in block <unit> at <unknown file>:1

浮点数的数据类型是 (Rat), 而列表的数据类型是 (Parcel), 而 Hash 是由 （Pair）组成的, [] 方括号包围的容器叫 Array, 而大括号 {} 包围的容器
叫 Hash：

    > 3.14.WHAT
    > say 3.14.WHAT
    (Rat)
    > say (1,2,3).WHAT
    (Parcel)
    > say (1 => 2).WHAT
    (Pair)
    > say {1 => 2, 3 => 4}.WHAT
    (Hash)
    > say [1 => 2, 3 => 4].WHAT
    (Array)
第四章：Perl6 的字符串

每个表达式都有一个隐含的 perl 方法，来打印出 perl6 语言相应的表达能力，
当然也可以自己设计其余的表达能力。例如 .spp .javascript 等。

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

    say index "Camelia is a butterfly", "a";     # 1
    say index "Camelia is a butterfly", "a", 2;  # 6
    say index "Camelia is a butterfly", "er";    # 17
    say index "Camelia is a butterfly", "Camel"; # 0
    say index "Camelia is a butterfly", "Onion"; # Int()
    say index("Camelia is a butterfly", "Onion").defined ?? 'OK' !! 'NOT'; # NOT

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
## 第 5 章： Perl 6 列表

    > my @list = (1,2,3)
    1 2 3

### end 获取最后一个元素的位置：

    > @list.end
    2

### keys 获取每个元素的位置索引：

    > @list.keys
    0 1 2

### values 获取每个元素的值：这个功能似乎针对散列有用

    > @list.values
    1 2 3

    > @list.kv
    0 1 1 2 2 3

    > @list.kv.perl
    ((0, 1), (1, 2), (2, 3)).list

    > @list.pairs
    0 => 1 1 => 2 2 => 3

    > @list.pairs.perl
    (0 => 1, 1 => 2, 2 => 3).list

### join, 将所有的元素合并起来：

    > @list.join.perl
    "123"

### map 可以针对列表的每个元素进行运算：

    > @list.map: { .WHAT.perl }
    Int Int Int
    > @list.map: { .WHAT }
    (Int) (Int) (Int)
    > @list.map: {.Str.chars}
    1 1 1

### grep 针对列表的每个元素进行一个规则的筛选：

    > @list.grep: Int
    1 2 3
    > @list.grep: { .Str.chars > 0 }
    1 2 3

### grep-index 获取的是元素的索引：

    > @list.grep-index: { .Str.chars > 0 }
    0 1 2

### first 用于获取满足条件的第一个值：

    > @list.first: * > 0
    1
    > @list.first: Int
    1

### first-index 用户获取第一个满足条件的值的索引：

    > @list.first-index: Int
    0

### Bool 返回非空数组为 True, 否则为 False:

    > @list.Bool
    True
    > ().Bool
    False

### Numeric 和 elems 的作用一样，返回数组的元素个数：

    > @list.Numeric
    3

### pick 用于随机的从数组中抽取数据：

    > my @array = <a b c d e>
    a b c d e
    > @array.pick
    e
    > @array.pick(3)
    e c b
    > @array.pick: *
    a c b d e

### permutations 获取元素的所有排列组合：

    > say .join('|') for <a b c>.permutations
    a|b|c
    a|c|b
    b|a|c
    b|c|a
    c|a|b
    c|b|a

### combinations 用于生成不重复的数组：

    > .say for combinations(4,2)
    0 1
    0 2
    0 3
    1 2
    1 3
    2 3

### reverse 用于倒序数组：

    > <hello world>.reverse
    world hello
    > reverse ^10
    9 8 7 6 5 4 3 2 1 0

### rotate 用于翻转数组：

    > <a b c d e>.rotate(2)
    c d e a b
    > <a b c d e>.rotate(-1)
    e a b c d

### sort 默认的排序是按照 ascii 值来进行从小到大的排列：

    > <c d e a b>.sort
    a b c d e
    > <1 2 3 4 5 10>.sort
    1 10 2 3 4 5

sort 也可以设置排序的规则，字符串对比和数字对比的比较操作符不同：

    > <1 2 3 4 5 10>.sort: { $^b leg $^a }
    5 4 3 2 10 1
    > <1 2 3 4 5 10>.sort: { $^b > $^a }
    10 5 4 3 2 1
    > (3, -4, 7, -1,2,0).sort: { $^b leg $^a }
    7 3 2 0 -4 -1
    > (3, -4, 7, -1,2,0).sort: { $^b > $^a }
    7 3 2 0 -1 -4
## 第六章 Perl 6 的 散列 Hash

Perl6 的 Hash 是由 pair 组成的无序集合:

Pair 是由 Enum 继承来的：

    > say :a<1>.WHAT
    (Pair)

Pair 是 Perl6 最基本的数据类型，经常用于函数的参数，也是 Hash 的组成单位：

    > (a => 1).key
    a
    > (a => 1).value
    1
    > (a => 1).invert
    1 => a

Pair 组成的 List 可以作为 Lisp 的链表来使用：
PairMap 就是有序的 Hash，不过 key 是不可更改的，只有值可以修改。
 
    > my %h = { a => 'b', c => 'd' }
    a => b, c => d
    > %h.perl
    ("c" => "d", "a" => "b").hash
    > if %h<a>:exists { say "%h has key a" }
    %h has key a
    > %h.keys.perl
    ("a", "c").list
    > %h.values.perl
    ("b", "d").list
    > %h.pairs.perl
    ("a" => "b", "c" => "d").list
    > %h.pairs
    a => b c => d
    > %h.hash
    a => b, c => d
    > %h.hash.perl
    ("c" => "d", "a" => "b").hash
    > (a => 'b', a => 'c').list
    a => b a => c

key 相同的 Pair 会自动合并，保留最后一个：

    > (a => 'b', a => 'c').hash
    a => c

invert 反转每一个 Pair 的 key 和 value:

    > %h.invert
    b => a d => c

    > %h.kv
    a b c d
    > %h.kv.perl
    ("a", "b", "c", "d").list

# Junctions

Junctions 意思是`它们之中的任意一个`, 这种说法在自然语言中频繁出现. Junctions 不是一种真正的数据类型，而是一种语法缩写，它可以简化编程模型, 而且很容易对其并行优化：

    'a'|'b'|'c'
    1|2|3

表示 Junctions 是用分隔符 `|` 来分割若干个值, 每一个值的位置是重合的而且没有什么顺序，所有针对 Junctions 的操作将分别作用于每一个值，并将返回值保存为另外一个 Junctions：

    my $x = 4;
    if $x == 3|4 {
        say '$x is either 3 or 4'
    }
    say ((2|3|4)+7).perl #=> (9|10|11) 

可以使用任意函数来操作 Junctions:

    if 2 == sqrt(4 | 9 | 16) {
        say "YaY";
    }

我们可以将数组转换成 Junctions:

    my Junction $weekday = any <Monday Tuesday Wednesday 
                                Thursday Friday Saturday Sunday>
    if $day eq $weekday {
        say "See you on $day";
    }

当然可以设计使用 Junctions 作为参数的函数：

    sub dump-yaml(Junction $stuff) {
        # we hope that YAML can represent junctions ;-)
        ....
    }

Junctions 是一种从语法缩写进化来的抽象数据类型，不能像普通的集合那样遍历和取值，这是新手经常犯得错误。 ## 第二章 Perl6 语法

Perl6 的继承了 Perl5 "条条大路通罗马" 的设计理念, 语法上有大量
冗余的设计，同样的意思，往往有不同形式的表达。

不同口味的人士都可以找到其相应的表达风格，Perl6 文化的包容性显现无疑。

# 1. 注释

# 1-1. 单行注释

    # 代码注释

# 1-2. 多行注释

    =begin comment
    多行注释1
    多行注释2
    =end comment

# 2. 变量命名规则

变量的命名除了一般语言的命名规则外，单引号 #{'}# 和减号 - 也可以作为
变量的组成字符：

    $this-is-id @that-is %float-number                        

# 2.1 标量

包含一个值的变量，可以是字符串，数字或是一个数组或散列的引用。

    my $scalar = 'string';
    my $number = 13/4;

# 2.2 列表

在上下文中定义多个标量的有序集合。

    my @list = (1, 2, 3, 4);
    my @list-any = ('a' 'b' 'c');

# 2.3 散列

强制在上下文中定义多个有名的值的无序集合：

    my %hash = { 'a' => 1, 'b' => 2 };

# 2.4 函数

过程的有名引用

    sub func (arg) { say arg }

 
 ## 5. 函数的设计

### 函数可以没有参数

    sub func-no-arg {
      say "this is no args subroutine";
    }
  
    func-no-arg;
    or
    func-no-arg();

大部分情况下是需要参数的，有点像 Javascript:

    sub func-with-arg ($arg1, $arg2) {
      return ($arg1 + $arg2);
    }

参数可以设置默认的值

   sub func-with-default-value ($arg1, $arg2=10) {
     return ($arg1 + $arg2);
   }

函数的参数可以支持命名：

    sub doit(:$when, :$what) {
        say "doing $what at $when";
    }

    doit(what => 'stuff', when => 'once');
    or doit(:when<noon>, :what('more stuff'));

## 函数的参数调用默认是传递引用，并对这个引用进行只读保护

    > sub try-to-reset($bar) { $bar = 2 }
    sub try-to-reset (Any $bar) { #`(Sub|66456416) ... }
    > my $x = 10;
    10
    > try-to-reset($x)
    Cannot assign to a readonly variable or a value

也可以取消引用的只读保护，当然也可以传值。
    
    > sub reset ($bar is rw) { $bar = 0 }
    sub reset (Any $bar is rw) { #`(Sub|66456520) ... }
    > reset($x)
    0
    > $x
    0
    > $x = 10
    10
    > sub quox ($bar is copy) { $bar = 3 }
    sub quox (Any $bar is copy) { #`(Sub|66456624) ... }
    > quox($x)
    3
    > $x
    10

函数的参数可以设置成可选的，只需要在这个参数后放置一个问号：

    > sub foo($x, $y?) { if $y.defined { say "second parameter was supplied" } }
    sub foo (Any $x, Any $y?) { #`(Sub|66456728) ... }
    > foo(1)
    > foo(1,2)
    second parameter was supplied

函数的设计可以支持多种参数组合, 就好像真正的函数式语言：

   multi sub frob(Str $s) { say "Frobbing string $s" }
   multi sub frob(Int $i) { say "Frobbing Integer $i" }

函数的参数当中如果有列表，并不会打乱参数的顺序，也不会占用多余的参数：

    sub a($scalar1, @list, $scalar2) {
        say $scalar2;
    }

    my @list = "foo", "bar";
    a(1, @list, 2);  # 2

如果参数保存在一个数组中，那么就用下面的方式，将参数传递到函数中：

    sub b($x, $y, $z) { say "$x $y $z" }
    my @list = (1,2,3);
    b(|@list); # 1 2 3


 ## 第七章 Perl 6 代码和语句及控制结构

### 判断语句

if $perlcent > 100 {
    say "weird mathematics";
}

for 1..3 {
    # 使用默认的 $_ 作为循环变量
    say 2 * $_;
}

for 1..3 -> $x {
    # 使用指定的循环变量
    say 2 * $x;
}

while $stuff.is_wrong {
    $stuff.try_to_make_right;
}

die "Access denied" unless $password eq "Secret";


### 分支

my $sheep = 43;
if $sheep == 0 {
    say "How boring";
} elsif $sheep == 1 {
    say "One lonely sheep";
} else {
    say "A herd, how lovely";
}

# Perl6 的大括号比 Ruby 的 end 更加简洁，也可以少打很多字母。
# 大括号的缩进功能也比 Python 手动缩进来的简单。

say "you won" if $answer == 42;

### 循环

for 0..5 -> $even, $odd {
    say "Even: $even \t Odd: $odd";
}

my %h = a => 1, b => 2, c => 3;
# my %h = { :a<1>, :b<2>, :c<3> };
# my %h = { a => 1, b => 2, c => 3 };
for %h.kv -> $key, $value {
    say "$key: $value";
}

loop (my $x = 2; $x < 100; $x = $x**2) {
    say $x;
}

代码块可以保存到一个变量中，也可以定义成一个函数：

    $func = sub ($a, $b) { .print if $a eq $b }
    $func = -> $a, $b { .print if $a eq $b }
    $func = { .print if $^a eq $^b } # $^a and $^b is placeholder

代码块的默认参数是 $_:

    $func = { .print if $_ } # same as: $func = -> $_ { .print if $_ }
    $func("printme")

通常情况下，代码块的参数都是作为代码块内的局部变量存在的。

临时用同名的局部变量保存一个全部变量的值：

    my $var = $OUTER::var
    my $var = OUTER::<$var>

our 定义了一个当前 package 范围内有效的一个变量:

    our $foo = 1;

constant 声明了一个在编译时的一个常量，系统将对其进行只读保护：

    constant $pi of Int = 3.14;
    my Num constant PI = atan2(2,2) * 4;


 
