# NQP 编程语言

NQP 是 Not Quite Perl 的简写, 是构建 Perl 6 的底层语言，也是一门专门用于设计语言的语言。

nqp 很快，但一旦出错，那么输出的错误信息将非常恐怖，让人难以接受。perl6 是门非常庞杂的语言，但真正有用的却不多，但 NQP 只保留了必须的功能。大部分的 NQP 语法同时也支持 Perl 6， 但 Perl 6 的错误输出更加精准。

NQP 可以帮助你了解 Perl 6 中真正有意义的部分，让你从 Perl 6 繁冗多变的学习过程中保持清醒：

## 基本数据类型

### 整数

    0 42 100

MQP 是编写编译器的语言，浮点数没有什么用。

### 字符串

    'non-interpolating'
    "and $interpolating"
    q{non-inerpolating}  # 单引号不用转义了
    Q{not even backslashes} # 反斜杠就不用转义了
    qq{and $interpolating} # 双引号就不用转义了

## 函数调用

在 NQP 中，所有的函数调用都需要括号：

    say('Mushroom, mushroom');

## 变量的命名范围

    my $pony;
    our $stable;

## 变量的命名规则

除了变量的最后或开始，都允许使用减号 `-`：

    $int-number

## 变量的 sigils （变量类型前缀）

和 Perl 5 一样 NQP 使用前缀来强制对标量，数组，散列和函数进行区分：

    my $ark;
    my @animals
    my %animal-counts;
    my &lasso;

动态变量 NPQ 也支持，这才是真正的全局变量：

    my @*blocks;

NQP 没有赋值，只有绑定：

    my $ast := QAST::OP.new( :op('time_n') );

给数组赋值：

    my @states := ['start', 'running', 'done'];
    my @states := ('start', 'running', 'done');
    my @states := <start running done>;

NQP 支持原生类型（int num str）声明：

    my int $idx := 9;
    my num $vel := 42.5;
    my str $mug := 'coffee';

NQP 支持关于流程控制的关键字：

    if elsif unless while until
    repeat for next last redo

## 关于函数

函数的参数项目不能省略，即使没有参数：

    sub mean() { say("sub def and call"); }

函数定义支持 `slurp` 参数 `*@args`，函数调用支持 `|` `flatten` 操作：

函数定义和参数调用都支持命名参数，因为这很简洁：

    sub make-op(:$name) { QAST::OP.new( :op($name) ) }
    make-op(name => 'time_n'); # 胖箭头语法
    make-op(:name<time_n>);
    make-op(:name('time'));

NQP 没有键值对，所以只有在函数的参数中才有这种简洁的写法，在对散列
赋值时，是没有这种优惠待遇的：

箭头 `->` 在 NQP 还是很常用的：

下面的就像一个闭包：

    sub op-maker-for($op) {
        return -> *@children, *%adverbs {
            QAST::OP.new(:$op, |@children, |%adverbs)
        }
    }

## 全局函数

### print, say

print 输入字符串，和 say 不同的是，没有强制输出回车,：

    print("hello world\n");
    say('hello world');

都可以接受多个参数：

    say("ok ", 1);
    print('o', 'k', ' ', 2, "\n");

接受变量内插：

    my $var := 'str';
    say("this is $var");

## 控制结构

    if 1  { say 'this is true' }
    say 'this is true' if 1;
    
    if 0 { say("not true"); }
    elsif 1 { say("ok 12");  }
    elsif 1 { say("not true"); }
    else { say("not ok 12 # else"); }

    unless 1 { say("hello world\n") }
    say("hello world\n") unless 0;

## 逻辑真假

NQP 中使用 0 代表假，使用 1 代表真:

    if !1 { print("not"); }
    if ?0 { print("not"); }

## NQP 的函数

也叫 Op，是虚拟机提供的功能接口。
