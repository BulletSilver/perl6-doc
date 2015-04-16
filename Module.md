# 模块

在 Perl 6 中，除了模块，`package`, `grammar`, `class`, `role` 等许多种类型，都可以用 `use` 来引用。

    use ACME::Rocket;
    my $R = ACME::Rocket.new;

所有的可以引用的模块的文件路径都在变量 `@*INC` 中：

    > say @*INC
    file:C:\rakudo\languages\perl6\lib
    inst:C:\rakudo\languages\perl6 inst:C:\rakudo
    \languages\perl6\site

默认的主程序所在的 package 是 `GLOBAL`:

    module GLOBAL; # 默认省略的语句

一般来说，模块除了会让当前命名空间多了一个模块的名字外，还会导入一些函数名称：

    use Sense <common @horse>;

这样的模块也许是这样设计的, 所有需要导出的名字后面都要加 `is export`：

    module Sense;

    sub common is export {}
    our @horse is export = 'horse';

