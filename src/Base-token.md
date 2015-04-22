# 内置 token

    \w  <[a..zA..Z_]>

    \d  <[0..9]>

    \s  whitespace characters

    \t  tab character

    \n  newline sequence

    \r  carriage return character

    \f  form feed character

    \h  horizontal whitespace

    \v  vertical whitespace

    \V  anything but vertical whitespace

    <ident>  <[a..zA..Z_]><[0..9A..Za..z_]*>

    <upper>  <[A..Z]>

    <lower>  <[a..z]>

    <digit>  <[0..9]>

    <xdigit> <[0..9a..fA..F]>

    <wb> && <ww> && <!w> 零宽单词边界.
    
    say 'match' 'hello world' ~~ /^ <|w>\w+<|w><ws><|w>\w+<|w> $/;
    #=> match

    <alpha> 字母或下划线, <[a..zA..Z_]>

<print> 还不支持：

    > 'a' ~~ / <print> /
    Cursor<5950436>P6opaque: no such attribute '$!pos'

<blank>  单个空格或制表符 tab

<space>  单个空格，等同于 `\s`.

<alnum>  字母加数字，包括下划线，单个字符

<punct>  标点符号

    > say map {$_.chr}, @(grep {$_.chr ~~ /<.punct>/}, ^127)
    ! " # % & ' ( ) * , - . / : ; ? @ [ \ ] _ { }

<cntrl> 不可见字符列表

    > say grep { $_.chr ~~ /<.cntrl>/ }, (1..127)
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
    19 20 21 22 23 24 25 26 27 28 29 30 31 127

Perl6 还从 Perl5 借鉴了许多字符类型的定义：

<:L>  Letter

    > map {$_.chr}, @(grep {$_.chr ~~ /<:L>/}, ^127)
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    a b c d e f g h i j k l m n o p q r s t u v w x y z

<:LC> Cased_Letter

    > map {$_.chr}, @(grep {$_.chr ~~ /<:LC>/}, ^127)
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    a b c d e f g h i j k l m n o p q r s t u v w x y z

<:Lu> Uppercase_Letter

    > map {$_.chr}, @(grep {$_.chr ~~ /<:Lu>/}, ^127)
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

<:Ll> Lowercase_Letter

    > map {$_.chr}, @(grep {$_.chr ~~ /<:Ll>/}, ^127)
    a b c d e f g h i j k l m n o p q r s t u v w x y z

    <:Lt> Titlecase_Letter

    <:Lm> Modifer_Letter

    <:Lo> Other_Letter

    <:M>  Mark

    <:Mn> Nonspacing_Mark

    <:Mc> Spacing_Mark

    <:Me> Enclosing_Mark

    <:N>  Number

    <:Nd> Decimal_Number

    <:Nl> Letter_Number

    <:No> Other Number

    <:P>  Punctuation (also Punct)

    <:Pc> Connector_Punctuation

    <:Pd>	Dash_Punctuation

    <:Ps>	Open_Punctuation

    <:Pe>	Close_Punctuation

    <:Pi>	Initial_Punctuation

    <:Pf>	Final_Punctuation

    <:Po>	Other_Punctuation

    <:S>	Symbol

    <:Sm>	Math_Symbol

    <:Sc>	Currency_Symbol

    <:Sk>	Modifier_Symbol

    <:So>	Other_Symbol

    <:Z>	Separator

    <:Zs>	Space_Separator

    <:Zl>	Line_Separator

    <:Zp>	Paragraph_Separator

    <:C>	Other

    <:Cc>	Control (also Cntrl)

    <:Cf>	Format

    <:Cs>	Surrogate

    <:Co>	Private_Use

    <:Cn>	Unassigned

<:!Lu> 是 <:Lu> 取反

（完）
