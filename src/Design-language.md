# 语言的转换

代码作为一种资产，只有被转换成目标语言，才有价值。

很多种语言，衍生出很多的模块和接口，这些不同语言造就的代码，大部分是不能一起工作的。

能够让不同语言在一起工作的机制，能够创造出巨大的价值。

## 解析规则的设计

使用 Grammar 设计解析语言的规则，将一门语言的代码解析成数据结构。

    grammar lisp-grammar {
        rule TOP { ... }
    }
    
## 将字符串匹配结果 `Match` 对象转换成数据结构：

    #!perl6
    use JSON::Tiny;

    my $str = 'abcdefghij';
    grammar my-grammar {
        token TOP { ^ (..) (..)**2 (..)+ $ }
    }

    my $match = my-grammar.parse($str);
    say to-json get-match-ast($match) if $match.Bool;
    #=> [ "ab", [ "cd", "ef" ], [ "gh", "ij" ] ]

    sub get-match-ast($match) {
        return $match.Str if has-blank-list($match);
        my @ast;
        for $match.kv -> $key, $value {
            push @ast, get-match-ast($value) if $key ~~ Int;
        }
        return [ @ast ] if $match.list ~~ Array;
        return @ast if $match.list ~~ List;
    }

    sub has-blank-list($match) { 
       $match.list.perl eq '().list' ??
       Bool::True !! Bool::False;
    }

## 将数据结构转换成语法树

    say 'something' if True;
    => (if True (say 'something'))
