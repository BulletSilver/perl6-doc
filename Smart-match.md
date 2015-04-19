# 智能匹配符 `~~`
#

智能匹配符号主要用于正则表达式的匹配：

    say 'str match \w+' if 'str' ~~ / \w+ /;

还可以用于类型匹配：

    say 'str match Str' if 'str' ~~ Str;
