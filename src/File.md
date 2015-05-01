# 文件处理

Perl 6 文件处理内置了很多的方法：

把文件读入一个字符串 `$content` 中：

    my $fh = open 'file-name';
    my $content = $fh.slurp;
    $fh.close

如果文件比较小，可一次性写入：

    my $content = 'file-name'.IO.slurp;

也可以这么写：

    my $content = slurp 'file-name';

也可以将文件中的内容按照行拆分成列表：

    my @lines = 'file-name'.IO.lines;

如果文件较大，就一次读一部分：

    my $fh = open 'file-name';
    while my $line = $fh.get {
        # do something;
    }

一次读一个字符的话，就比较慢了：

    my $fh = open 'file-name';
    my $line = $fh.getc;

读入一个文件的内容，然后处理后写回去：

    spurt "testfile", "data and stuff\n";

如果文件很大，就需要写多次了：

    my $fh = open "testfile", :w;
    $fh.say("data and stuff");
    $fh.close;

如果是在原来文件基础上增加内容，就用 `:a` append 模式：

    my $fh = open "testfile", :a;
    $fh.say("more data");
    $fh.close;

测试一个文件是否存在：

    if "nonexistent_file".IO.e {
        say "file exists";
    }
    else {
        say "file doesn't exist";
    }

测试一个文件是否是文件夹：

    say "testfile".IO.d;  # False
    say "lib".IO.d;       # True

测试一个文件名是否是文件：

    say "testfile".IO.f;  # True
    say "lib".IO.f;       # False

其他有用的方法：

    # 输出当前目录所有的文件名
    say dir; # "/path/to/testfile".IO "/path/to/lib".IO
    
    # 输出目录 '/etc/' 所有的文件名 
    say dir "/etc/"; # "/etc/ld.so.conf".IO "/etc/shadow".IO ....

    # 创建目录
    mkdir "newdir";

    # 创建目录 'newdir', 如果失败就报错
    mkdir "newdir" or die "$!";

    # 删除目录 'newdir'
    rmdir "newdir" or die "$!";

This documentation is provided under the terms of the Artistic License 2.0.
