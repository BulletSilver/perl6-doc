# 从 Perl 5 到 Perl 6

Perl 6 继承了 Perl 5 的优良特性，无情的抛弃了其糟粕，成为一种独立的语言：

命名数组时，可以省略括号，通过索引引用数组的元素时，前置符号还是 `@`:

    # Perl 5
    my @fruits = ('an apple', 'a pear', 'a banana');
    say $fruits[0];
    # Perl 6
    my @fruits = ('an apple', 'a pear', 'a banana');
    say @fruits[0];

对于不包含空格的单词，可以省略 `qw`:
   
    # Perl 5
    my @fruits = qw<apple pear banana>;
    # Perl 6
    my @fruits = <apple pear banana>;

Perl 6 中，哈希的元素不在自动引起：

    # Perl 5
    $days{February};
    # Perl 6
    %days{'February'};
    # or 
    %days<February>;
    %days<<February>>;
    
所有的全部变量都有一个 `*` 标记：

    Perl 5: $ENV{FOO}
    Perl 6: %*ENV<FOO>
    Perl 5: @ARGS
    Perl 6: @*ARGS

获取数组的元素数量：

    Perl 5: $#array+1 or scalar(@array)
    Perl 6: +@array or @array.elems

数组的最后一个索引：

    Perl 5: $#array
    Perl 6: @array.end

获取数组最后一个元素：

    Perl 5: $array[-1] or shift @array
    Perl 6: @array[*-1] or @array.shift

双下划线变量也不同：

    Perl 5   => Perl 6
    __LINE__    $?LINE
    __FILE__    $?FILE
    __PACKAGE__ $?PACKAGE
    __END__     =begin END
    __DATA__    =begin DATA

上下文：
    
    my @array = (1, 2, 3);

    # 可以将数组保存成标量
    my $a = @array; say $a.WHAT; #=> Array

    # 字符串上下文
    say ~@array; #=> "1 2 3"

    # 数字上下文
    say +@array; #=> 3

    # 逻辑真假上下文
    say ?@array; #=> True

判断语句, 条件表达式不需要括号了：

    Perl 5: if ($a < $b) { .. }
    Perl 6: if $a < $b { .. }

    Perl 5: for (@whatever) { ... }
    Perl 6: for @whatever { ... }

循环内的局部变量声明更简洁了：

    Perl 5: for my $x (@whatever) { ... }
    Perl 6: for @whatever -> $x { ... }

关键字也有些不同：

    Perl 5: for ($i=0; $i<10; $i++) { ... }
    Perl 6: loop ($i=0; $i<10; $i++) { ... }

    Perl 5: while (1) { ... }
    Perl 6: loop { ... }

测试字符串表达式：

    # Perl 5
    eval { 
        # ...
    }
    if (#@) { warn "oops: $@" }

    # Perl 6
    try {
        # ...
        CATCH { warn "oops: $!" }
    }

数据类型不再用 `ref`:

    Perl 5: ref $foo eq 'HASH'
    Perl 6: $foo ~~ Hash

数组和哈希的行为不同：

    Perl 5: my %h = ( k => [ @a ] );
    Perl 6: my %h = ( k => @a );

`wantarray` 已经没有用了

文件 `-r -x` 操作符用智能匹配代替了：

    Perl 5: if (-r $file && -x $file) { .. }
    Perl 6: if $file ~~ :r && :x { ... }

新的数据类型 `Junctions` 大大简化了运算：

    Perl 5: if ($a == 1 or $a == 2) { ... }
    Perl 6: if $a == 1|2 { ... }

Perl 6 真正支持面向对象编程：

    class YourClass {
        # 私有属性
        has $!private;

        # public 属性
        hash @.public;

        # 可写的 public 属性
        has $.stuff is rw;

        method do-sth {
            if self.can('bark') {
                say 'Sth doggy';
            }
        }
     }

面向对象的方法调用 `->` => `.`：

    Perl 5: $object->$methodname(@args);
    Perl 6: $object."$methodname"(@args);

空格变得很重要：

    Perl 5: $n<1
    Perl 6: $n < 1

    Perl 5: $seen {$_} ++;
    Perl 6: $seen{$_}++;

    Perl 5: $customer -> name;
    Perl 6: $customer.name;

`grep` 和 `map` 都成了函数：

    # Perl 5
    my @results = grep { $_ eq "bars" } @foo;
    # Perl 6
    my @results = grep { $_ eq "bars" }, @foo;

删除哈希和数组的键：

    # Perl 5
    my $deleted_value = delete $hash{$key};
    # Perl 6
    my $deleted_value = %hash{$key}:delete;

    # Perl 5
    my $deleted_value = delete $array[$i];
    # Perl 6
    my $deleted_value = @array[$i]:delete;

判断哈希或数组是否存在键或索引：

    # Perl 5
    say "element exists" if exists $hash{$key};
    # Perl 6 - use :exists adverb
    say "element exists" if %hash{$key}:exists;

    # Perl 5
    say "element exists" if exists $array[$i];
    # Perl 6 - use :exists adverb
    say "element exists" if @array[$i]:exists;

正则表达式也有不同的操作符：

    next if $line  =~ /static/  ; # Perl 5
    next if $line  ~~ /static/  ; # Perl 6

    next if $line  !~ /dynamic/ ; # Perl 5
    next if $line !~~ /dynamic/ ; # Perl 6

    $line =~ s/abc/123/;          # Perl 5
    $line ~~ s/abc/123/;          # Perl 6

    next if $line =~    /static/i ; # Perl 5
    next if $line ~~ m:i/static/  ; # Perl 6

    next if $line =~    m/[aeiou]/   ; # Perl 5
    next if $line ~~ m:P5/[aeiou]/   ; # Perl 6, using P5 modifier
    next if $line ~~ m/  <[aeiou]> / ; # Perl 6, native new syntax

正则表达规则的变化 Perl 5 => Perl 6:

    [abc]          => <[abc]>
    [^abc]         => <-[abc]>
    [a-zA-Z]       => <[a..zA..Z]>
    [[:upper:]]    => <:Upper>
    [abc[:upper:]] => <[abc]+:Upper>
    (?:pattern)    => [ pattern ]
    (pattern)      => ( pattern )
    fo|foo|f       => fo||foo||f
    foo|fo|f       => f|fo|foo    
    (?=[abc])                => <?[abc]>
    (?=ar?bitrary* pattern)  => <before ar?bitrary* pattern>
    (?!=[abc])               => <![abc]>
    (?!=ar?bitrary* pattern) => <!before ar?bitrary* pattern>
    (?<=ar?bitrary* pattern) => <after ar?bitrary* pattern>
    (?<!ar?bitrary* pattern) => <!after ar?bitrary* pattern>

Perl 6 的正则表达式中可以插入任意的空格，相当于 Perl 5 的 `xms` 模式

    / this is hello /xms => / this is hello /

默认情况下，正则表达式中的点 `.`, 可以代表任意字符，包括回车符。

    / . /xms => / . /

Perl 6 中 `\A`, `\z`, `\Z` 没有了。

文件读取更加简单：

    # Perl 5
    open my $i_fh, '<', $input_path or die $!;
    # Perl 6
    my $i_fh = open $input_path,  :r;

    # Perl 5
    open my $o_fh, '>', $output_path or die $!;
    # Perl 6
    my $o_fh = open $output_path, :w;

    # Perl 5
    open my $fh, "<", "file" or die "$!";
    my @lines = <$fh>;
    close $fh;

    # Perl 6
    my @lines = "file".IO.lines;

常量定义更简单：

    use constant DEBUG => 0; # Perl 5
    constant $DEBUG = 0;     # Perl 6

    use constant pi => 4 * atan2(1, 1); # Perl 5
    # pi, e, i are built-in constants in  Perl 6
    
(未完待续)

