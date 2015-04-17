Perl 6 是设计语言的语言，特性丰富，语法简洁。

[安装](http://rakudo.org/how-to-get-rakudo/)

[文档](http://perl6.org/documentation/)

# 注释

单行注释以井号开始：
    
    # 单行注释

多行注释可以使用左对齐的 `=begin flag` 直到另外一行左对齐的 `=end flag` 横跨多行

    =begin comment
    多
    行
    注
    释
    =end comment

# 变量

在 Perl 6 中，我们可以使用 `my` 来声明一个局部变量，用 `our` 来声明一个 package 范围内的变量：

    my $variable;
    our $variable;

Perl 6 有四种类型的变量：

## 标量

通常表示单个的值, 使用美元符号 `$` 开始：

    my $str = 'String';

双引号可以允许变量内插：

    my $str2 = "This is $str";

变量名称可以包含单引号 `'` 和减号 `-`, 但不能以它们结尾：

    my $weird'variable-name_ = 5; #=> 合法的变量名

Perl 6 的使用 `True` 和 `False` 表示布尔值的真假：

    my $bool = True;

我们可以使用前导的叹号 `!` 来对这个布尔值取反：

    my $inverse = !$bool;

将一个值转换成布尔值，使用前置的 `so`:

     my $forced-bool = so $str;

## 列表

列表代表多个值的集合，名字以 `@` 开始：

    my @array = 'a', 'b', 'c';
    my @array = ('a', 'b', 'c');
    my @array = ['a', 'b', 'c'];

下面的写法意思是一样的：

    my @letters = <a b c>; # 这和 Perl 5 的 qw, Ruby 的 %w 用法一样

数字的列表：

   my @array = 1, 2, 3;

数组的索引从 0 开始，表示第三个元素用：

    say @array[2];

数组的内插用包括 `[]` 的完整列表名称:

    say "Interpolate an array using [] : @array[]";
    #=> Interpolate an array using [] : 1 2 3

给列表的索引重新赋值：

     @array[0] = -1;

同时给多个索引赋值：

    @array[0, 1] = 5, 6;

使用索引的列表给列表赋值：

    my @keys = 0, 2;
    @array[ @keys ] = @letters;
    say @array;  #=> a 6 b

## 散列

散列是键值对 `Pair` 的集合.

    my %hash = 1 => 2, 3 => 4;
    my %hash = (1 => 2, 3 => 4);
    my %hash = { 1 => 2, 3 => 4 };

散列的键 `key` 如果没有空格，可以不使用引号包围：

    my %hash = autoquoted => "key",
               'some other' => 'value';

你可以直接用一个列表来给散列赋值：

    my %hash = <key1 value1 key2 value2>;

这和下面的表达式是一样的：

    my %hash  = key1 => 'value1', key2 => 'value2';

还有一种冒号对 `colon pair` 的简洁语法来表示散列的键值对，常用在函数或方法的命名参数中：

    my %hash = :w(1),    # 等同于 w => 1
               :truey,   # 等同于 :truey(True) 或 truey => True
               :!falsey, # 等同于 :falsey(False) 或 falsey => False
               ;         # 在最后一个键值对后放置逗号是允许的

从散列中取出一个键的值使用 `{}`:

    say %hash{'key1'}; #=> value1

如果键 `key` 是由不包含空格的字符数字组成，则可以用 `<>` 这种更简洁的写法：

    say %hash<key2>;  #  %hash{key2} 这种写法是错误的

## 函数

函数就是大多数语言中的过程或方法。
 
    sub say-hello { say "Hello, world" }

将一个函数保存在变量中，我们用 `&` 开始的变量：

    my &s = &say-hello;

可以将一个匿名函数保存成变量：

    my &other-s = sub { say "Anonymous function!" }

函数的参数可以声明数据类型，这种声明检查在代码编译的时候能有效阻止一些难以觉察的错误：

    sub say-hello-to(Str $name) { say "Hello, $name!" }

参数还可以是可选的：

    sub with-optional( $arg? ) {  # 使用问号 `?` 来标记参数
        say "I might return (Any) if I don't have an argument passed,
               or I'll return my argument";
       $arg;
    }

调用这个函数可以使用下面几种写法：

    with-optional;      # 返回为空
    with-optional();    # 返回为空
    with-optional(1);  #  返回 1

可以在参数中设置默认的值：

    sub hello-to( $name = "World" ) { say "Hello, $name !" }

    hello-to;  #=> Hello, World !
    hello-to(); #=> Hello, World!
    hello-to('You'); #=> Hello, You !

当然可以用 `冒号表示法` 来书写更简洁的参数：

    sub with-named( $normal-arg, :$named) { say $normal-arg + $named }

    with-named(1, named => 6);  #=> 7
    with-named(1, :named(6));     #=> 7
    
和可选参数相对，强制的参数用 `!`:

    sub with-mandatory-named( :$str! ) { say "$str !" }
    with-mandatory-named( str => "My String"); #=> My String !

当没有参数或参数数据类型不对的时候，就会报错：

    with-mandatory-named;
    #=> run time error: "Required named parameter not passed" 
   
    with-mandatory-named(3);
    #=> run time error: "Too many positional parameters passed"

当然可以使用命名的布尔参数：

    sub takes-a-bool( $name, :$bool ) { say "$name takes $bool" }
    takes-a-bool('config', :bool);  #=>  config takes True
    takes-a-bool('config', :!bool);  $=> config takes False

命名参数的默认值：

    sub named-def( :$def = 5 ) { say $def }
    named-def;  #=> 5
    named-def(def => 15);  #=> 15

可以像 Perl 5 一样，设置用星号 `*` 来表示 `吞噬参数` (slurpy parameter) 来将后面的参数全部吸入:

    sub as-many( $head, *@rest)  { say @rest.join('/') ~ "!" }
    say as-many(1, 'Happy', 'Birthday'); #=> Happy/Birthday!

用于参数的一个非常有用的操作符，`|`, 通常用于展开列表：

    sub concat-all( $a, $b, $c ) { say "$a $b $c" }
    concat-all( |@array ); #=> a, b, c

像 Haskell 语言一样，默认传入 Perl 6 参数是被写保护的，不能修改：

    sub immutate( $n ) { $n++ }
    my $n = 1;
    immutate($n);  #=> error

当然也可以修改参数：

    sub mutate( $n is  rw ) { $n++ }
    my $n = 1;
    mutate($n);
    say $n; #=> 2

如果不想被函数调用破坏变量的值，可以使用 `copy` 来对传入的参数进行复制：

    sub make-copy ($n is copy ) { $n++ }
    my $n = 1;
    make-copy($n);
    say $n; #=> 1

## 条件语句

    if True { say "It's true!" } #=> It's true!
    unless False { "It's not false!" }  #=> It's not false!

下面的写法多此一举，而且会报错：

    if (True) say 'It is true!";

也可以把条件语句放在表达式的后面：

    say "Quite truthy" if True;

也可以用 Perl 5 的三元表达式来进行条件判断，但是用 `?? !!`:

    my $a = $condition ?? $value-if-true !! $value-if-false; 

Perl 6 的 `given when` 组合已经被 Perl 5 借鉴了：

    given 'foo bar' {
         # $_ 的写法和 Perl 5 是一样的
         say $_; #=> foo bar
         when /foo/ { say "Yay!" } #=> Yay!
         when $_.chars > 50 ｛ say "Quite a long string!" }
         default { say "Something else" }
         # 所有的 when 条件都不符合时，才触发这个分支
    }

## 循环结构

如果不设置条件或结束方法，`loop` 将会永远的循环下去：

    loop {
        say "This is an infinite loop!";
        last; # last 将会让程序从循环中跳转出去，就好像别的语言中的 break
    }

    loop (my $i = 0; $i < 5; $i++) {
        next if $i == 3;
        # next 将会让程序直接跳到下一次循环，类似别的语言中的 continue
        say "This is a C-style for loop!";
    }

`for` 语句接受一个列表，默认用 `$_` 来作为迭代参数：

    for @array {
        say "I've got $_";
        .say;  # 意思和 say $_; 相同
        $_.say;
    }

也可以设置有名迭代变量（局部）：

    for @array -> $a {
        next if $a == 3; # 跳转到下次循环，迭代变量随之变化
        redo if $a == 4; # 将重新一次循环，迭代变量不变
        last if $a == 5; # 结束循环
    }

在 `if` `unless` 等语句中也可以使用 `->` 设置有名的局部变量：

    if long-computation() -> $result { say "The result is $result" }

`for` 循环结构可以遍历嵌套的列表：

    for 1, 2, (3, (4, ((5)))) {
       say "Got $_.";
    } #=> Got 1. Got 2. Got 3. Got 4. Got 5.

还有几种形式的循环也经常用到：

`map` 常用于变换列表：

    ((1,2),3,(4,5)).map({ print "got $_," }) 
    #=> got 1,got 2,got a,got 3,got 4,got 5,

`pick` 用于从列表中随机获取元素：

    (@a, @b, @c).pick(1);
    pick 1, @a, @b, @c;    # 和上面的用处一样

# 操作符 (Operators)

Perl 6 定义了丰富的操作符，这些操作符其实就是函数，但写法上更随意，可以有效增加代码的可读性。

操作符分成 5 种：

*  前置型 (prefix)， 如： `!` => `!True`
*  后置型（posfix）, 如：`++` => `$a++`
*  中置型（infix），如：`*` => `4 * 3`
*  环绕型（circumfix），如：`[`-`]` => `[1, 2]`
*  后置环绕型（post-circumfix），如：`{`-`}` => `%hash{'key'}`

## 比较操作符

- `==` `!=` `>` `>` `<=` `>=` 用于数字比较

    3 == 4；# False

    3 != 4;   # True

- `eq` `ne` `lt` `le` `gt` `ge` 用于字符串比较

    'a' eq 'b';  # False

    'a' ne 'b'  # True

    'a' !ne 'b'; # False

- `eqv` 用于数组的深度比较

    (1, 2) eqv (1, 3); # Flase

- `~~` 是智能匹配符，可用于多种类型的数据比较：

     'a' ~~ /a/; # True

     'key' ~~ %hash; # 如果散列中包含名称为 ‘key' 的键，则返回 True

     $arg ~~ &bool-returning-function; # 如果函数可以接受 $arg 作为参数值，则返回真 

     1 ~~ Int; # 对象的实例可以和对象的类型进行匹配

     1 ~~ True; # 数字和字符串都可以和逻辑真假进行匹配

## 范围构造符 `..`:

    3 .. 7; # 3 到 7 所有的整数

`^` 在 `..` 的任意一侧，表示不包括这侧的数：

    3 ^..^ 7; # 4 到 6 所有的整数

`^N` 是 `0 .. ^N` 的缩写：

    ^10;  # 表示 0 到 9 所有的整数

`..` 同样可以构造惰性(`lazy`)和无限(`infinite`)列表：

    my @array = 1 .. *; # 1 .. INF 同样是表示 1 到无穷的序列

可以将这种范围列表作为列表的索引：

    say @array[^10]; 
    #=> 1 2 3 4 5 6 7 8 9 10

当你在 REPL 中打出 `say 1..*` 的命令时，Perl 6 将认为这是一个无限循环，
会强制在输出一定数量后停止.

这种写法在赋值时显得格外简洁：

    my @numbers = ^20;
    say @numbers;
    #=> 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19

## 逻辑操作符 `and` `or` (也可以写做： `&&` `||`):

    3 && 4; # 和 3 and 4 相同，返回 4
    0 || False; # 和 0 or False 相同，返回 False

`&&` 也称为 `短路` 操作符，返回第一个计算结果为 False 的值，或最后一个 True 值。

## 解包 (Unpacking)

这种能力在赋值运算中显得简洁：

    my ($a, $b) = 1, 2;
    say $a; #=> 1
    my ($, $, $c) = 1, 2, 3; # $ 作为一个占位符(place-holder)
    say $c; #=> 3
    my ($head, *@tail) = 1, 2, 3; # `吞噬符`在赋值中也能用
    say @tail; #=> 2 3

在函数定义中，`[..]` 可以用于列表解包：

    sub foo(@array [$fst, $snd]) {
        say "My first is $fst, my second is $snd. All in all, I am @array[].";
    }
    foo([1,2]); #=> My first is 1, my second is 2. All in all, I am 1 2.

函数内部如果没有 `return` 语句，那么最后一个表达式的值将作为返回值：

    sub next-index( $n ) { $n + 1 }
    my $new-n = next-index(3); # $new-n 现在是 4

像大多数函数式语言一样，Perl 6 的函数可以进行多次定义，每次的参数可以不同：

    multi sub sayit(Int $n) { say "Number: $n" }
    multi sub sayit(Str $s) { say "String: $s"; }

    sayit("foo"); #=> String: foo
    sayit(10);    #=> Number: 10
    sayit(True);  #=> error! calling 'sayit' will never work with arguments of types

Perl 6 的函数还有很多特性，但不是很常用，详细内容可到 http://doc.perl6.org 查看。

# 变量生存期

和大部分动态语言类似，在使用变量前，需要先声明它们.

Perl 6 定义了许多了声明关键字，`my`, `our`, `state`, `temp`,
`my` 定义了一个局部的变量，这种变量在块结构中尤其有用。

    my $foo = 'foo';
    sub foo {
        my $foo = 'Bar';
        sub bar {
            say "$foo $bar";
        }
        &bar; # 返回函数 bar 本身，并不会调用
    }
    foo()(); #=> 'Foo Bar'

从以上的代码中可以看出，变量 `$foo`, `$bar` 保留了上级结构中定义的值。
当我们想在最外层使用 `$bar` 的时候，就会现实 `undefined value` (未定义的值）。

Perl 6 有另外一种变量：动态变量(dynamic scope). 它们使用星号 `*` 开始.

    my $*a = 1;

这种变量在 Lisp 的发展历史中可以看到关于它的一些争论，这种变量虽然不常用，但在某些场合
是必不可少的。

动态变量会在调用的时候才会从周围环境去获取当时的值，而不是在定义的时候就确定：

    my $*foo = 1;
    sub foo { say $*foo; }

动态变量是一种被函数调用的外部变量, 通常全局变量都会被设置成动态变量。

`our` 定义的变量不是全局的，而是包(package)范围的。

`temp` 和 Perl 5 的 `local` 变量一样，可以暂存上下文的变量，但不会修改它们。

`state` 声明的变量，通常用在闭包或函数中：

    my $hello = -> { state $var = 10; $var++ }
    $hello(); #=> 10
    $hello(); #=> 11

在闭包或函数中，静态变量可以保存调用过程中生成的中间结果，从而让函数也可以拥有 `状态`.
    
# 对象模型

Perl 6 拥有相当复杂的对象模型。

我们可以用 `class` 来声明一个类，用 `has` 定义一个属性，类方法用 `method` 定义。
属性用 `$!attr` 定义为私有，用 `$.attr` 定义的属性是公共的。每一个公共的属性都
会自动构造一个同名的类方法 `attr` 来获取类的属性值。

Perl 6 的对象模型叫 `SixModel` 是非常灵活的，可以允许我们动态的添加方法，改变类的定义。

    class A {
        # $.field 是不可变的
        # 想从内部修改它，使用 `$!field`
        has $.field;
        # rw 可以声明一个可以修改的类属性
        has $.other-field is rw;
        # 内部属性
        has Int $!private-field = 10;

        method get-value {
            $.field + $!privated-field + $n;
        }
        
        method set-value($n) {
            # $.field = $n; # 这种写法是错误的
            # 修改类属性，应当用下面的写法
            $!field = $n;

            # 类属性是 rw 的话，就可以修改了
            $.other-field = 5;
        }

        method !private-method {
            say 'This method is private to the class!';
        }
    };

    # 创建一个类属性 `$.field` 为 5 的类实例
    # 不能从外部修改私有属性
    my $a = A.new(field => 5);
    $a.get-value; #=> 18
    # $a.field = 5; 将会报错，因为 $.field 是只读的
    $a.other-field = 10; # 公共属性是 rw 的，可以被修改
    
Perl 6 支持多重继承，虽然很多人对此有争论：

    class A {
        has $.val;

        # submethod 定义的方法不会被继承
        submethod not-inherited {
            say "This method could not be inherited";
            say "submethod most useful for BUILD";
        }

        method bar { $.val * 5 }
    }

    # 从 A 继承定义类 B
    class B is A {
        method foo { say $.val; }
        
        # 将会覆盖类 A 的同名方法 bar
        method bar { $.val * 10 }
    }

    my $b = B.new(val => 5);
    $b.not-inherited; # 将会报错，因为这个方法不能继承
    $b.foo; #=> 5
    $b.bar; #=> 50

## 角色(Roles)

Perl 6 的 `Roles` 类似 Ruby 的 `Mixins` 和 Java 的 `Interface`, 
是一种没有实例的抽象类：

    role PrintableVal {
        has $!counter = 0;
        method print {
            say $.val;
        }
    }

想要从 `Role` 中继承接口，就用 `does`:

    class Item does PrintableVal {
        has $.val;

        # 从 Role 继承后，Roles 中所有的私有属性和方法都是可见的
        method access {
            say $!counter++;
        }
    }

# 正则表达式

Perl 6 的正则表达式 `Regex` 是 Perl 5 的正则表达式 `Regexp` 的扩展，增加了很多有用的功能。

有一些东西没有变，例如 `?`, `+` 和 `*`, 但有些东西就不同了，例如 `|` 的行为。

正则表达式中任意位置可以增加一些空格以增加代码的可读性：

    say so 'a' ~~ /a/; #=> True
    say so 'a' ~~ / a /; #=> True

所有的正则表达式都会返回一个 `Match` 对象，这个对象可以像列表一样取索引，也可以像
散列一样查询指定名称的值，也可以返回字符串格式的匹配结果。

返回的匹配结果保存在一个局部变量 `$/` 中，你可以使用 `$0`, `$1`, ... 来获取捕获的值。

在 Perl 6 中，任何除了字母之外的字符都可能是含义不同的字符，所以如果想表示字符本身，
最好使用引号或者将其使用反斜杠 `\` 转义：

    say so 'a|b' ~~ / a '|' b /; # True
    say so 'a|b' ~~ / a \| b /;  # True
    
默认在 `Regex` 中，空格是被忽略的，如果想让空格恢复其本意，要使用 `:s`:

    say so 'a b c' ~~ / a b c /; # `False`
    say so 'a b c' ~~ /:s a b c /; # `True`
 
## 数量表示符

`?` 表示匹配 0 或 1 个：

    say so 'ac' ~~ / a b? c /; # `True`
    say so 'abc' ~~ / a b? c /; # `True`

`+` 表示匹配 1 或多个：

    say so 'ac' ~~ / a b+ c /; # `False`
    say so 'abc' ~~ / a b+ c /; # `True`
    say so 'abbbbc' ~~ / a b+ c /; # `True`

`*` 表示匹配 0 或多个：

    say so 'ac' ~~ / a b* c /; # `True`, they're all optional.
    say so 'abc' ~~ / a b* c /; # `True`
    so 'abbbbc' ~~ / a b* c /; # `True`
    so 'aec' ~~ / a b* c /; # `False`. "b"(s) are optional, not replaceable.

`**` 表示指定数量范围的个数

    say so 'abc' ~~ / a b ** 1 c /; # `True`
    say so 'abc' ~~ / a b ** 1..3 c /; # `True`
    say so 'abbbc' ~~ / a b ** 1..3 c /; # `True`
    say so 'abbbbbbc' ~~ / a b ** 1..3 c /; # `False`
    say so 'abbbbbbc' ~~ / a b ** 3..* c /; # `True`
   
`<[]>` 表示字符类

字符类相当于 Perl 5 的 `[]`，但这种写法可以让字符类进行一些简单的运算：

    say 'fooa' ~~ / f <[ o a ]>+ /; #=> 'fooa'

字符类中用 `..` 表示范围，就像 PCRE 中的破折号 `-`：
    
    say 'aeiou' ~~ / a <[ e..w ]> /;
    #=> 'aeiou'

除了 `a..z A..Z 0..9` 外的所有字符，都需要转义才能表示其本身, 包括空格：

    say 'he-he !' ~~ / 'he-' <[ a..z \! \  ]> + /;
    #=> 'he-he !'

如果将重复的字符放在一个字符类中，就会报错：

    'he he' ~~ / <[ h e ' ' ]> /;
    #=> Warns "Repeated characters found in characters class"

想要对字符类取反，用 `<-[...]>`(PCRE 中用 `[^]`):

    say so 'foo' ~~ / <-[ f o ]> + /;
    #=> False

在字符集之间，`-` 表示差集，`+` 表示并集：

    say so 'foo' ~~ / <[ a..z ] - [ f o ]> + /;
    #=> False
    say so 'foo' ~~ / <-[ a..z ] + [ f o ]> + /;
    #=> True
    say so 'foo!' ~~ / <-[ a..z ] + [ f o ]> + /;
    #=> True

## 分组和捕获

分组：我们可以用 `[]` 将正则表达式分组( 像 Perl 5 中的 `(?:)`:

    say so 'abc' ~~ / a [ b ] c /; # `True`
    say so 'fooABCABCbar' ~~ / foo [ A B C ] + bar /; #=> True

捕获：我们可以用 `()` 来捕获匹配到的字符串：

    say so 'fooABCABCbar' ~~ / foo ( A B C ) + bar /;
    #=> `True`

匹配结果保存在局部变量 `$/` 中，可以像列表一样使用：

    say $/[0];
    #=> ｢ABC｣ ｢ABC｣ (这是 `Match` 对象的表示形式)
    say $0; #=> ｢ABC｣ ｢ABC｣ (同上)

## 分支匹配符 `|` 和 `||`:

`||` 分支符同 PCRE 的 `|` 的效果相同，都是取第一个符合条件的分支：

    'foo' ~~ / (fo || foo) /; say $0; #=> ｢fo｣

`|` 分支符是别的语言没有的，它将选择所有匹配分支中最长的字符串的那个分支：

    'foo' ~~ / (fo | foo) /; say $0; #=> ｢foo｣

# 包(package)

包是组织代码的形式，是一种命名空间(namespace), Perl 6 一共有 6 种形式的包, 分别是 `class`, `module`, `regex`, `role`, `subset` 和 `enum`. `package` 是最底层的实现。

    class Package::Name::Here  {}
    module Hello::World { }
    module Parse::Text; # 通常位于文件第一行
    grammar Parse::Text::Grammar { }

调用一个类，模块，可以用 `use`:

    use JSON::Tiny; # 默认会导出 from-json 这个函数
    say from-json('[1]').perl; #=> [1]
 
当然你也可以用下面的方式调用:

    my $actions = JSON::Tiny::Actions.new;

所有的 package 类型(`class`, `role`, etc) 默认都是全局的，当然你也可以定义局部的包：

定义一个可以导出变量和方法的模块：

    module Foo::Bar {
      our $n = 1; 
      our sub inc {
        our sub available { 
          say "Don't do that. Seriously. You'd get burned.";
        }
        my sub unavailable { 
          say "Can't access me from outside, I'm my !";
        } 
       }
       say ++$n;
     }
     say $Foo::Bar::n; #=> 1
     Foo::Bar::inc; #=> 2
     Foo::Bar::inc; #=> 3

# 常量

可以用 `constant` 定义一个全局的常量：

    constant Pi = 3.14;
    constant $var = 1;

## （完）
