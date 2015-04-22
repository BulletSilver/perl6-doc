# 基本正则定义

    token sigil { < $ @ % & :: > }
    # <ident> <[a..zA..Z_]><[0..9A..Za..z_]*>
    # <upper> <[A..Z]>
    # <lower> <[a..z]>
    # <digit> <[0..9]>
    # <xdigit> <[0..9a..fA..F]>
    # <wb> a zero-width match that is true at word boundaries
    # <ww> matches between two word characters (zero-width)

## <alpha>

字母或下划线
    
    <alpha> <[a..zA..Z_]>

## <print> 还不支持：

    > 'a' ~~ / <print> /
    Cursor<5950436>P6opaque: no such attribute '$!pos'

## <|w>

单词边界, <ww> <wb> << >> 都是单词边界，为什么定义这么多？
    
    say 'match' 'hello world' ~~ /^ <|w>\w+<|w><ws><|w>\w+<|w> $/;
    #=> match
    
## <blank> 

单个空格或制表符 tab

## <space>

单个空格，等同于 `\s`.

## <alnum>

字母加数字，包括下划线，单个字符

## <punct>

    > say map { $_.chr }, @(grep { $_.chr ~~ /<.punct>/ }, (1..127))
    #=> ! " # % & ' ( ) * , - . / : ; ? @ [ \ ] _ { }

## <cntrl>

    > say grep { $_.chr ~~ /<.cntrl>/ }, (1..127)
    #> 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
       19 20 21 22 23 24 25 26 27 28 29 30 31 127
