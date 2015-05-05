## Good Parts of Perl 6

每种语言都有糟粕，即使是最新的语言。也许是每个人的个性不同，也许是文化不同。

1. 注释

单行注释和 shell 的提示 `SHEBANG` 是一致的，都是用井号开始：

    # this is single line comment

多行注释用关键字开始，以关键字结束，这样就可以把注释解析成数据结构，
从而使用代码来处理文档。

    =begin data
    多
    行
    注
    释
    =end data

这样注释中的内容就可以引用了。

2. 文档

没开始讲代码，讲语法，就开始讲文档，是不是舍本逐末？

Perl 6 的文档系统被设置成数组，其实更应当设置成散列，而且取文本的
命令太长了。

下面是理想中的写法：

    # 在标量环境中自动设置成字符串
    my $data = $=<data>;

而下面是现实中的写法：

    my $data = $=pod[0].contents

经常用到的文档模板：

    =head1 Perl 6 tourial

    =begin introduce :keyword1 :keyword2

        =begin sample1
        say 'hello world'
        =end sample1

    =end introduce

3. 变量名称

使用 $ 作为变量名称，这让内插变得容易：

    "this is $interploate"

这也让变量在代码中更容易识别：

    if $if say $say;


