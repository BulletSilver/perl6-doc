# 代码块和闭包

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

（完） 
