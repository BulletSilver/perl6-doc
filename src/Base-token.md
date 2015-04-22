# 内置 token

## <ident>

通常作为变量名的匹配，<[a..zA..Z_]><[0..9A..Za..z_]*>

## <upper>

大写字母， <[A..Z]>

## <lower>

小写字母， <[a..z]>

## <digit>

数字，<[0..9]>

## <xdigit>

16 进制的数字，<[0..9a..fA..F]>

## <wb> && <ww> && <!w>

零宽单词边界.
   
    say 'match' 'hello world' ~~ /^ <|w>\w+<|w><ws><|w>\w+<|w> $/;
    #=> match

## <alpha>

字母或下划线, <[a..zA..Z_]>

## <print> 还不支持：

    > 'a' ~~ / <print> /
    Cursor<5950436>P6opaque: no such attribute '$!pos'

## <blank> 

单个空格或制表符 tab

## <space>

单个空格，等同于 `\s`.

## <alnum>

字母加数字，包括下划线，单个字符

## <punct>

标点符号。

    > say map { $_.chr }, @(grep { $_.chr ~~ /<.punct>/ }, (1..127))
    #=> ! " # % & ' ( ) * , - . / : ; ? @ [ \ ] _ { }

## <cntrl>

不可见字符列表：

    > say grep { $_.chr ~~ /<.cntrl>/ }, (1..127)
    #> 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
       19 20 21 22 23 24 25 26 27 28 29 30 31 127

（完）
