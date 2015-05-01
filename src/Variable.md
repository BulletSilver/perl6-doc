# 变量

## 动态变量

动态变量主要用在函数中。在函数定义的时候，可以在其中使用自由变量，
也就是在函数定义外的变量。但变量的值在定义的时候就固定了。如果想
在调用的环境中感知自由变量，就需要用到动态变量。就像 newlisp 中
自由变量的处理规则，而普通变量就像 scheme 函数中对待自由变量的
规则。

    my $lexical  = 1;
    my $*dynamic = 10;

    sub say-all() { say "$lexical, $*dynamic"; }

    # prints 1, 10
    say-all();

    {
        my $lexical  = 2;
       my $*dynamic = 11;

       # prints 1, 11
     say-all();
    }

    # prints 1, 10
    say-all();

^ 符号作为函数内的占位符，自动声明变量，还是不用的好。

    > for ^4 { say "$^b follow $^c" }
    0 follow 1
    2 follow 3
    > for ^4 { say "$^x follow $^y" }
    0 follow 1
    2 follow 3
    > for ^4 -> $a, $b, $y { say "$a follow $b follow $y" }
    0 follow 1 follow 2
    Too few positionals passed; expected 3 arguments but got 1
    > for ^6 -> $a, $b, $y { say "$a follow $b follow $y" }
    0 follow 1 follow 2
    3 follow 4 follow 5
    > for ^6 -> $a, $b, $y { say "$^a follow $^b follow $^y" }
    ===SORRY!=== Error while compiling <unknown file>
    Redeclaration of symbol $^a as a placeholder parameter
    at <unknown file>:1
    ------> for ^6 -> $a, $b, $y { say "$^a<HERE> follow $^b follow $^y" }
    > for ^6 { say "$^a follow $^b follow $^y" }
    0 follow 1 follow 2
    3 follow 4 follow 5
    > for ^7 { say "$^a follow $^b follow $^y" }
    0 follow 1 follow 2
    3 follow 4 follow 5
    Too few positionals passed; expected 3 arguments but got 1
    > for ^4 { say "$^a follow $^b follow $^y" }
    0 follow 1 follow 2
    Too few positionals passed; expected 3 arguments but got 1
