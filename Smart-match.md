# 智能匹配符 `~~`
#

智能匹配符号主要用于正则表达式的匹配：

    say 'str match \w+' if 'str' ~~ / \w+ /;

还可以用于类型匹配：

    say 'str match Str' if 'str' ~~ Str;

还能用于替换：

    > my $str = 'str'; $str ~~ s/str/ooo/; say $str;
    ooo

用 Perl 5 模式可以将 Perl 5 的正则表达式转换成 Perl 6 的正则表达式：

    m:P5/(?mi)^(?:[a-z]|\d){1,2}(?=\s)/

:ov (:overlap)模式可以从一个字符串中获取所有符合条件的字符串：

    > my $str = 'abracadabra';
    abracadabra
    > if $str ~~ m:ov/a(.*)a/ { say ~@().list }
    abracadabra acadabra adabra abra
    > my $str = 'this is a word'
    this is a word
    > say ~($str ~~ m:ov/\w+/)
    this his is s is s a word ord rd d
    > say ~($str ~~ m:ov/<|w>\w+<|w>/)
    this is a word

:ex(:exhaustive) 模式和 :ov 模式差不多，但顺序不固定：

    $str = "abracadabra";

     if $str ~~ m:exhaustive/ a (.*?) a / {
         say "@()";
         # br brac bracad bracadabr c cad cadabr d dabr br
     }

