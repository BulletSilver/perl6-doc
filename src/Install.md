# 安装

[相关英文文档](http://rakudo.org/how-to-get-rakudo/)

- Perl 6 只是一门语言的规范

- Rakudo 是 Perl 6 的发行版

## 下载

### Windows 平台

现在稳定的版本是 2015.02 版本：

下载地址：[http://rakudo.org/downloads/star/]
(http://rakudo.org/downloads/star/rakudo-star-2015.02.msi)

安装完成后，要将两个文件夹放入环境变量：

    C:\rakudo\bin
    C:\rakudo\languages\perl6\lib

### Ubuntu 平台

    > sudo apt-get install rakudo
    

## REPL 命令行模式

在 shell 中输入 `perl6` 就可以进入 REPL 模式，和 Ruby，Python 一样，
REPL 模式很有用，可以帮助你调试一些简单的功能：

    X:/> perl6
    > say 'hello world'
    hello world
    > for ^6 { .say }
    0
    1
    2
    3
    4
    5

## 安装模块

Perl 6 已经有很多有用的模块了：

    X: > panda install YAML

## 安装编辑器

编写代码是件快乐的事情，而一个顺手的编辑器更是会让枯燥的编程世界焕发光彩。

![vim-code](https://raw.githubusercontent.com/songzan/perl6-doc/master/img/vim-sample-code.PNG)

这个编辑器就是号称编辑器中的神器：`Vim 编辑器`, 它是开源的，而且体积小，速度快，支持上百种语言，当然包括 Perl 6：

安装 Vim 很简单，从 360 软件管家中就可以找到 Gvim (Vim 的 Windows 版本).

Vim 中文文档很完整。[地址](http://vimcdoc.sourceforge.net/)

当然也可以直接下载：

[Vim 下载地址](ftp://ftp.vim.org/pub/vim/pc/gvim74.exe)

想拥有以上界面，当然还需要一个好字体：

[微软雅黑 Vim 专用字体](https://github.com/songzan/perl6-doc/blob/master/tools/yahei.ttf?raw=true)

[Vim 配置文件](https://github.com/songzan/perl6-doc/blob/master/tools/_vimrc)

将这个文件的内容拷贝到 Vim 安装目录 `C:\Program Files\Vim` 中的 `_vimrc` 文件中（原有的内容要删除). 然后就可以享受 Vim 带来的快乐了。

（未完待续）
