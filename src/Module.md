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

Perl 6 的发行版 Rakudo 内置了很多的模块：

### Bailador;

Bailador is a port of the Perl Dancer web development framework

use Bailador;

    # simple cases
    get '/' => sub {
        "hello world"
    }

    baile;

### Debugger::UI::CommandLine;

### Digest::MD5;

### File::Find;

Get a lazy list of a directory tree

    use File::Find;

    my @list := find(dir => 'foo');
    say @list[0..3];

    my $list = find(dir => 'foo');
    say $list[0..3];

### Grammar::Debugger;

### Grammar::Profiler::Simple;

### HTTP::Easy;

### HTTP::Status;

### JSON::RPC;

### JSON::Tiny;

A simple Perl 6 module for serializing and deserializing JSON5.

    use JSON5::Tiny;

    my $p = '[{"a" : 3,"b" : 4 }]';
    my $s = from-json($p);
    my $t = to-json($s);

### LWP::Simple;

### MIME::Base64;

### PSGI;

### SVG::Plot;

### SVG;

### Shell::Command;

### Template::Mojo;

### Term::ANSIColor;

### Test::Mock;

### XML::Writer;

### p6doc;

### panda;

### ufo;


